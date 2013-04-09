	
	; Winmove, A,,    W,X,Y,Z 
	; W = Distance from the left most side of your main monitor.
    ; X = Distance from the top of your main monitor. 	
	; Y = The total width of the window.
	; Z = The total height of the window
	
	
	
	^NumpadHome::
            WinMove,A,,     2, 17, 312, 1061
		return
	^NumpadUp::
            WinMove,A,,     316,  17, 1602, 1061
    	return 
	^NumpadPgUp::
            WinMove,A,,     2, 17, 1916, 1061
    	return
		
		
	
	^NumpadLeft::
            WinMove,A,,     -1918,  17, 502, 1061
    	return

	^NumpadClear::
			WinMove,A,,     -1414, 17, 1412, 1061
    	return
	
	^NumpadRight::
            WinMove,A,,     -1918, 17, 1916, 1061
    	return

	
	
	^NumpadEnd::
            WinMove,A,,     -1414,  17, 502, 204
    	return

	^NumpadDown::
			WinMove,A,,     -1414, 223, 502, 855
    	return
	
	^NumpadPgDn::
            WinMove,A,,     -910, 17, 908, 1061
    	return
		
		
	!^NumpadHome::
            WinMove,A,,     1922, 182, 312, 896
    	return
	!^NumpadUp::
            WinMove,A,,     2236, 182, 1121, 896
    	return
	!^NumpadPgUp::
            WinMove,A,,     1922, 182, 1435, 896
    	return
		
		
		;Program position center
		!^NumpadPgDn::
            WinMove,A,,     460, 165, 1000, 750
    	return