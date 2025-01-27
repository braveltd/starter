require("avante").setup {
  ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
  provider = "openai",
  openai = {
    endpoint = "https://api.hyperbolic.xyz/v1",
    model = "deepseek-ai/DeepSeek-R1",
    max_tokens = 96777,
    temperature = 0.1,
  },
  behaviour = {
    auto_focus_sidebar = false,
  },
}
