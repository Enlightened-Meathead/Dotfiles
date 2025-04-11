local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

-- Always assign (harmless if already registered)
configs.harperls = configs.harperls or {
  default_config = {
    cmd = { vim.fn.stdpath("data") .. "/mason/bin/harper-ls", "--stdio" },
    filetypes = { "markdown", "text" },
    root_dir = lspconfig.util.root_pattern(".git", "package.json", "."),
    settings = {
    ["harper-ls"] = {
      userDictPath = "",
      fileDictPath = "",
      linters = {
        SpellCheck = true,
        SpelledNumbers = false,
        AnA = true,
        SentenceCapitalization = true,
        UnclosedQuotes = true,
        WrongQuotes = false,
        LongSentences = true,
        RepeatedWords = true,
        Spaces = true,
        Matcher = true,
        CorrectNumberSuffix = true
      },
      codeActions = {
        ForceStable = false
      },
      markdown = {
        IgnoreLinkTitle = false
      },
      diagnosticSeverity = "hint",
      isolateEnglish = false,
    }
  }
  },
}

return {}
