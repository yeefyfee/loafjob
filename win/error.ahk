; ScriptEncoding UTF-8
^+f::
    global maskOn
    if (!maskOn) {
        Gui, +AlwaysOnTop +ToolWindow -Caption +E0x20
        Gui, Color, 000080  ; 深蓝色背景
        Gui, Font, s60, Consolas
        Gui, Add, Text, x50 y100 w%A_ScreenWidth% cWhite, :(
        Gui, Font, s24, Consolas
        Gui, Add, Text, x50 y200 w%A_ScreenWidth% cWhite, Your PC ran into a problem and needs to restart.
        Gui, Font, s18, Consolas
        Gui, Add, Text, x50 y250 w%A_ScreenWidth% cWhite, We're just collecting some error info, and then we'll restart for you.
        Gui, Font, s14, Consolas
        completeText := "0% complete"
        Gui, Add, Text, x50 y320 w%A_ScreenWidth% cWhite, %completeText%
        Gui, Font, s12, Consolas
        Gui, Add, Text, x50 y400 w%A_ScreenWidth% cWhite, For more information about this issue and possible fixes, visit
        Gui, Add, Text, x50 y420 w%A_ScreenWidth% cWhite, https://www.windows.com/stopcode
        Gui, Font, s10, Consolas
        Gui, Add, Text, x50 y500 w%A_ScreenWidth% cWhite, If you call a support person, give them this info:
        Gui, Add, Text, x50 y520 w%A_ScreenWidth% cWhite, Stop code: CRITICAL_PROCESS_DIED
        Gui, Show, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight%, Blue Screen
        maskOn := true
    } else {
        Gui, Destroy
        maskOn := false
    }
return