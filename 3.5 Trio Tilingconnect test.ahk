	
	; Winmove, A,,    W,X,Y,Z 
	; W = Distance from the left most side of your main monitor.
    ; X = Distance from the top of your main monitor. 	
	; Y = The total width of the window.
	; Z = The total height of the window
	
	
	
	^NumpadHome::
            WinMove,A,,     2, 17, 312, 1061
		return
	^NumpadUp::
            WinMove,A,,     314,  17, 1604, 1061
    	return 
	^NumpadPgUp::
            WinMove,A,,     2, 17, 1916, 1061
    	return
		
		
	
	^NumpadLeft::
            WinMove,A,,     -1918,  17, 502, 1061
    	return

	^NumpadClear::
			WinMove,A,,     -1416, 17, 1414, 1061
    	return
	
	^NumpadRight::
            WinMove,A,,     -1918, 17, 1916, 1061
    	return

	
	
	^NumpadEnd::
            WinMove,A,,     -1416,  17, 502, 204
    	return

	^NumpadDown::
			WinMove,A,,     -1416, 221, 502, 857
    	return
	
	^NumpadPgDn::
            WinMove,A,,     -914, 17, 912, 1061
    	return
		
		
		;Program position center
		!^NumpadPgDn::
            WinMove,A,,     460, 165, 1000, 750
    	return