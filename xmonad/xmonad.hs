import XMonad
import XMonad.Hooks.SetWMName 
import XMonad.Config.Desktop
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog

main = xmonad =<< xmobar desktopConfig
    { terminal    = "urxvt"
    , modMask     = mod4Mask
    , startupHook = setWMName "LG3D"
    , layoutHook  = avoidStruts $ layoutHook defaultConfig
    , manageHook  = manageHook defaultConfig <+> manageDocks
    }
