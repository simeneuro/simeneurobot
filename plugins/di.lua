
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
  description = "El plugin mas sencillo!",
  usage = "!di [lo que sea]: repite el mensaje",
  patterns = {
    "^!di (.+)$"
  }, 
  run = run 
}
