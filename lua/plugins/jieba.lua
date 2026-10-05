return {
  "fanlusky/jieba.nvim",
  -- maps w/b/e/ge (n, x) and iw/aw (x) to jieba word motions; the
  -- memory-mapped dictionary loads in ~1 ms on the first motion
  lazy = false,
  vscode = true,
  -- lazy.nvim runs the plugin's build.lua, which downloads the prebuilt
  -- cppjieba module (64-bit Windows)
}
