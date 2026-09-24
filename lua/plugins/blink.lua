return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- Windows 自带的 curl 在 --create-dirs 时会把中文用户名目录的编码弄错，导致预编译库下载失败。
    -- 这里改为在目标目录下运行 curl 并只传文件名，让参数里不出现中文路径。
    if vim.fn.has("win32") == 1 then
      local async = require("blink.cmp.lib.async")
      local download = require("blink.cmp.fuzzy.download")
      local files = require("blink.cmp.fuzzy.download.files")

      download.download_file = function(url, filename)
        return async.task.new(function(resolve, reject)
          local download_config = require("blink.cmp.config").fuzzy.prebuilt_binaries
          local args = { "curl" }

          if download_config.proxy.url ~= nil then
            vim.list_extend(args, { "--proxy", download_config.proxy.url })
          elseif download_config.proxy.from_env then
            local proxy_url = os.getenv("HTTPS_PROXY")
            if proxy_url ~= nil then
              vim.list_extend(args, { "--proxy", proxy_url })
            end
          end

          vim.list_extend(args, download_config.extra_curl_args)
          vim.list_extend(args, {
            "--fail",
            "--location",
            "--silent",
            "--show-error",
            "--output",
            filename,
            url,
          })

          vim.system(args, { cwd = files.lib_folder }, function(out)
            if out.code ~= 0 then
              reject("Failed to download " .. filename .. " for pre-built binaries: " .. out.stderr)
            else
              resolve()
            end
          end)
        end)
      end
    end
    return opts
  end,
}
