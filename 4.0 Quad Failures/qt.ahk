	;Edit the below variables to fit your personal needs and specifications.
	
	;Main Monitor, Horizontal
	hresolution1 := 1920
	
	;Main Monitor, Vertical
	vresolution1 := 1080
	
	
	
	;Second Monitor, Horizontal
	hresolution2 := 1920
	
	;Second Monitor, Vertical
	vresolution2 := 1080
	
	;Second Monitor Position, Set to -1 if the monitor is on the Left or 1 if the monitor is on the Right
	monitorpos := -1
	
	;Second monitor offset, If your monitor is not aligned at the top, set the number of pixels that it is off by to this value (Up is negative, Down is positive)
	monitoroff := 0
	
	
	
	;The border/boundary you want between all your windows, horizontal
	hborder := 6
	
	;The border/boundary you want between all your windows, vertical
	vborder := 6
	
	;This border value is an extra value you can add to the outer sides of your windows, horizontal
	hborderextra := 0
	
	
	
	;The first monitors taskbar height, top
	ttaskbar1 := 15
	
	;The second monitors taskbar height, top
	ttaskbar2 := 15
	
	;The first monitors taskbar height, bottom
	btaskbar1 := 0
	
	;The second monitors taskbar height, bottom
	btaskbar2 := 0
	
	;The first monitors taskbar height, right
	rtaskbar1 := 0
	
	;The second monitors taskbar height, right
	rtaskbar2 := 0
	
	;The first monitors taskbar height, left
	ltaskbar1 := 0
	
	;The second monitors taskbar height, left
	ltaskbar2 := 0
	
	
	
	;Width of the secondary window on monitor 1
	hwindow1 := 446
	
	;Width of the secondary window on monitor 2
	hwindow2 := 446
	
	;Width of the tiered windows on monitor 2
	hwindow34 := 446
	
	;Height of the upper tier window on monitor 2
	vwindow3 := 191
	
	;Speed/Number of pixels the window moves when using the ctrl + alt + arrowkey commands
	;Speed, Horizontal
	hspeed := 40
	
	;Speed, Vertical
	vspeed := 20
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------	
	
	
	currentwindows1 := 0
	currentwindows2 := 0
	
	window1_1 := null
	window1_2 := null
	window1_3 := null
	window1_4 := null
	window1_5 := null
	window1_6 := null
	window2_1 := null
	window2_2 := null
	window2_3 := null
	window2_4 := null
	window2_5 := null
	window2_6 := null
	
	titletemp := null
	
	xtemp := 0
	ytemp := 0
	widthtemp := 0
	heighttemp := 0
	temp := 0
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	getMonitor()
	{
		global
		WinGetPos , xtemp, ytemp, widthtemp, heighttemp, A
		if (xtemp > 0 || xtemp = 0)
		{
			temp := 1
		return
		}
		temp := 2
	return
	}
	
	
	setTitle(title, monitor)
	{	
		global
		currentwindows%monitor% := (currentwindows%monitor% + 1)
		currenttemp := currentwindows%monitor%
		if (monitor = 1)
		{
			window1_%currentwindows1% := 
		}
		WinSetTitle, %title%,, [%currenttemp%] %title%
	return
	}	
	
	
	setPosition(monitor)
	{
		global
		if (monitor = 1)
		{
			if (currentwindows1 = 1)
			{
				WinMove, %window1_1%,,     (hborder + hborderextra + ltaskbar1), (ttaskbar1 + vborder), (hresolution1 - hborder - hborder - hborderextra - hborderextra - ltaskbar1 - rtaskbar1), (vresolution1 - ttaskbar1 - vborder - vborder - btaskbar1)
			}
		}
		if (monitor = 2)
		{
			if (currentwindows2 = 1)
			{
				
			}
		}
	}
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	;test
	^Up::
	{
		WinGetTitle, titletemp, A
		getMonitor()
		setTitle(titletemp, temp)
		setPosition(temp)
	}