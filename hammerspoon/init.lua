hsModifier = {"cmd", "alt", "ctrl"}

hs.hotkey.bind(hsModifier, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 10
  win:setFrame(f)
end)

function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
hsConfigWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.dotfiles/hammerspoon", reloadConfig):start()

hs.hotkey.bind(hsModifier, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")
