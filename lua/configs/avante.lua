require("avante").setup {
  ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
  provider = "openai",
  openai = {
    endpoint = "https://api.kluster.ai/v1",
    model = "deepseek-ai/Deepseek-R1",
    -- max_tokens = 96777,
    temperature = 0.3,
  },
  behaviour = {
    auto_focus_sidebar = false,
  },
}
