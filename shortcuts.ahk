;; Prevent Ctrl key masking when Win key is pressed
#MenuMaskKey, vkFF

;; TODO Better way to detect just Win key without a combination of other keys
;; Win = PowerToys Run
;;LWin::
;;    KeyWait, LWin
;;    Send, {Blind}{LWin Down}{Space Down}{LWin Up}{Space Up}
;;    return

;; Win + M = Toggle Maximize
*#m::
    WinGet, Style, Style, A
    ;; Not Is Maximized
    If Not (Style & 0x1000000)
        WinMaximize, A
    Else
        WinRestore, A
    return
