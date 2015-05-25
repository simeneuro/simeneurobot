
local function run(msg, matches)
  local text = matches[1]
  local b = 1

  while b ~= 0 do
    text,b = text:gsub('^!+','')
    text = text:trim()
  end
  return text
end

return {
  description = "Simplest plugin ever!",
  usage = "!di [whatever]: dies the msg",
  patterns = {
    "^!di (.+)$"
  }, 
  run = run 
}
