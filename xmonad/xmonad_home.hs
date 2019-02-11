import XMonad
import XMonad.Hooks.SetWMName 
import XMonad.Config.Desktop
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog

main = do
    xmonad =<< xmobar desktopConfig
    { terminal    = myTerminal
    , modMask     = myModMask
    , startupHook = myStartUpHook
    , layoutHook  = avoidStruts $ layoutHook desktopConfig
    , manageHook  = manageHook desktopConfig <+> manageDocks
    }

myTerminal = "urxvt"
myModMask = mod4Mask
myBorderWidth = 3
myStartUpHook = setWMName "LG3D"
