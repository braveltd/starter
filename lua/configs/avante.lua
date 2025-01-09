require("avante").setup {
  ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
  provider = "openai",
  openai = {
    endpoint = "https://api.hyperbolic.xyz/v1",
    model = "deepseek-ai/DeepSeek-V3",
  },
}
