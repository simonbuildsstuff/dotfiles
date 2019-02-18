import XMonad
import XMonad.Hooks.SetWMName 
import XMonad.Config.Desktop
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog

main = 
    xmonad =<< xmobar desktopConfig
    { terminal    = myTerminal
    , modMask     = myModMask
    , workspaces  = myWorkspaces
    , startupHook = myStartUpHook
    , layoutHook  = avoidStruts $ layoutHook desktopConfig
    , manageHook  = manageHook desktopConfig <+> manageDocks
    }

myTerminal = "gnome-terminal"
myModMask = mod4Mask
myBorderWidth = 3
myStartUpHook = setWMName "LG3D"
myWorkspaces = ["1:Dev(IJ)","2:Dev(VS)","3:Web","4:Term","5","6","7:Keys","8:Mail","9:Chat"]
