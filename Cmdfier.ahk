;References taken from stackoverlow
;Warning:this script wont work for users having "AZERTY" Keyboard .
#NoTrayIcon
#SingleInstance ignore
#IfWinActive ahk_class ConsoleWindowClass

; Close Command Window with Ctrl+w
$^w::
WinGetTitle sTitle
If (InStr(sTitle, "-")=0) { 
    Send exit{Enter}
} else {
    Send ^w
}

return 


; Ctrl+up / Down to scroll command window back and forward
^Up::
Send {WheelUp}
return

^Down::
Send {WheelDown}
return
;clear on pressing control and l
^l::
Send cls{Enter}
return


; Use backslash instead of backtick .
#EscapeChar \

; Paste in command window.
^V::
StringReplace clipboard2, clipboard, \r\n, \n, All
SendInput {Raw}%clipboard2%
return
^startnewsession::
Send start & cls{Enter}
return
