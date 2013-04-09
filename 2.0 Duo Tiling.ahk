	; Winmove, A,,    W,X,Y,Z 
	; W = Distance from the left most side of your main monitor.
    ; X = Distance from the top of your main monitor. 	
	; Y = The total width of the window.
	; Z = The total height of the window.
	
	; First 1920 x 1080 Monitor (Main)
	NumpadHome::
            WinMove,A,,     -1916,  19, 1434, 1057
    return
	 ^NumpadHome::
            WinMove,A,,     -1916, 19, 1912, 1057
    return
	NumpadUp::
            WinMove,A,,     -958, 709, 475, 367
    return
	NumpadLeft::
            WinMove,A,,     -479,  19, 475, 1057
    return
	^NumpadLeft::
            WinMove,A,,     -958,  19, 475, 686
    return
	
	
	; Second 1920 x 1080 Monitor (Alternate)
	NumpadPgUp::
            WinMove,A,,   4,  19, 1434, 1057
    return
	^NumpadPgUp::
            WinMove,A,,   4,  19, 1912, 1057
    return
	NumpadRight::
            WinMove,A,,   1441, 19, 475, 1057
    return
	NumpadEnd::
			WinMove,A,,   4, 19, 475, 1057
    return
	NumpadDown::
			WinMove,A,,   483, 19, 475, 1057
    return
	NumpadPgDn::
			WinMove,A,,   962, 19, 475, 1057
    return
	
	; Hide window
	NumpadClear::
            WinMove,A,, 1948,  28, 1224, 968
    return
