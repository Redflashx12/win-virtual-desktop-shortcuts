#Requires AutoHotkey v2.0

; Define hotkeys for F1 to F10
#F1::SwitchDesktop(1)
#F2::SwitchDesktop(2)
#F3::SwitchDesktop(3)
#F4::SwitchDesktop(4)
#F5::SwitchDesktop(5)
#F6::SwitchDesktop(6)
#F7::SwitchDesktop(7)
#F8::SwitchDesktop(8)
#F9::SwitchDesktop(9)
#F10::SwitchDesktop(10)

; Function to switch desktops
SwitchDesktop(desktopNum)
{
    Send("{LWin Down}{Tab}{LWin Up}")  ; Simulate pressing Win+Tab
    Sleep(150)
    Send("{Tab}")  ; Simulate pressing Tab
    Sleep(25)

    Loop (desktopNum - 1)  ; Press the right arrow for n-1 times
    {
        Send("{Right}")
        Sleep(25)
    }

    Send("{Enter}")  ; Simulate pressing Enter
}

return
