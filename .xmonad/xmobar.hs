Config {
    font = "xft:Fixed-8",
    bgColor = "#000000",
    fgColor = "#ffffff",
    position = TopW L 100,
    lowerOnStart = False,
    commands = [
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %d %Y %H:%M:%S" "date" 10,
        Run Com "getMasterVolume" [] "volumelevel" 10,
        Run Com "getBrightness" [] "brightness" 10,
        Run BatteryN ["BAT0"] ["-t", "Bat.: <left>% / <timeleft>"] 600 "bat0",
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    allDesktops = True,
    overrideRedirect = False, -- https://stackoverflow.com/questions/36286004/xmobar-is-hidden-on-first-xmonad-workspace
    template = "%StdinReader% }{ %multicpu%   %memory% |  <fc=#FFFFCC>%date%</fc>   |   Volume: <fc=#b2b2ff>%volumelevel%</fc> | Bright: <fc=#FFFFCC>%brightness%</fc> | %bat0%"
}
