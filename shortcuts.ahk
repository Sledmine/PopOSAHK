;; Prevent Ctrl key masking when Win key is pressed
#MenuMaskKey, vkFF

;; TODO Better way to detect just Win key without a combination of other keys
;;Win = PowerToys Run (imitates launch bar on PopOS!)
;;LWin::
;;    KeyWait, LWin
;;    Send, {Blind}{LWin Down}{Space Down}{LWin Up}{Space Up}
;;    return

;; Ctrl + Alt + L = Close League Of Legends Client
;; Stupid rito, do not waste my time
*^!L::
    Run, taskkill /f /im "League of Legends.exe"
    return

;; Win + Q = Close current window
*#q::
    WinClose, A
    return

;; Win + M = Toggle Maximize
*#m::
    WinGet, Style, Style, A
    ;; Not Is Maximized
    If Not (Style & 0x1000000)
        WinMaximize, A
    Else
        WinRestore, A
    return

;; Alternative shortcut, not present in PopOS!
;; Win + N = Toggle Minimize
*#n::
    WinMinimize, A
    return

;; Win + T = Open terminal
*#t::
    Run, cmder
    return
