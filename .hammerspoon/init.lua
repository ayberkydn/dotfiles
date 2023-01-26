hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall.repos.paperWM = {
    url = "https://github.com/mogenson/PaperWM.spoon",
    desc = "paperWM repo",
}

hyper = {"cmd","alt","ctrl"}
Install = spoon.SpoonInstall

Install:andUse("ReloadConfiguration")
spoon.ReloadConfiguration:start()


Install:andUse("FadeLogo",
               {
                 config = {
                   default_run = 1.0,
                   zoom=false,
                   fade_in_time=0.3,
                   fade_out_time=0.3,
                   run_time=0.5,
                 },
                 start = true
               }
)


print("init.lua loaded")