hs.loadSpoon("SpoonInstall")

-- spoon.SpoonInstall.repos.other = {
--     url = "https://github.com/nathancahill/Anycomplete",
--     desc = "anycomplete repo",
-- }

spoon.SpoonInstall:andUse("ReloadConfiguration")
spoon.ReloadConfiguration:start()

print("init.lua loaded")
