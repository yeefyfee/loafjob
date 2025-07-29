; ScriptEncoding UTF-8
^+f::
    global maskOn
    if (!maskOn) {
        Gui, +AlwaysOnTop +ToolWindow -Caption +E0x20
        Gui, Color, White
        Gui, Font, s60, Microsoft YaHei
        Gui, Add, Text, x0 y120 w%A_ScreenWidth% Center cGray, 403
        Gui, Font, s24, Microsoft YaHei
        Gui, Add, Text, x0 y250 w%A_ScreenWidth% Center cGray, THIS IS ERROR
        Gui, Font, s14, Microsoft YaHei
        Gui, Add, Text, x0 y320 w%A_ScreenWidth% Center cGray, Your client does not have permission to access this page.`nHTTP ERROR 403
        Gui, Show, x0 y0 w%A_ScreenWidth% h%A_ScreenHeight%, 403 Forbidden
        maskOn := true
    } else {
        Gui, Destroy
        maskOn := false
    }
return