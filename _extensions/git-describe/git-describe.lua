-- DPS: Modified example from https://quarto.org/docs/extensions/shortcodes.html#named-arguments

-- run git and read its output
function git(command)
  local p = io.popen("git " .. command)
  if p ~= nil then
    local output = p:read('*all')
    p:close()
    return output
  else
    return pandoc.Null
  end
end

-- return a table containing shortcode definitions
-- defining shortcodes this way allows us to create helper 
-- functions that are not themselves considered shortcodes 
return {
  ["git-describe"] = function(args, kwargs)
    -- run the command
    local cmd = "describe --dirty"
    local rev = git(cmd)
    
    -- return as string
    return pandoc.Str(rev)
  end
}