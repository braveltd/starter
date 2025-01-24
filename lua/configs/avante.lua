local function read_system_prompt()
  local path = vim.fn.expand "~/.config/nvim/prompts/avante_system.txt"
  local file = io.open(path, "r") -- Open the file in read mode
  if not file then
    return ""
  end
  local content = file:read "*a" -- Read all content
  file:close()
  return content
end

require("avante").setup {
  system_prompt = read_system_prompt(),
  ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
  provider = "openai",
  openai = {
    endpoint = "https://api.hyperbolic.xyz/v1",
    model = "deepseek-ai/DeepSeek-R1",
    max_tokens = 131072,
    temperature = 0.1,
  },
  behaviour = {
    auto_focus_sidebar = false,
  },
}
