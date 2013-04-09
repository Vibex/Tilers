	;Edit the below variables to fit your personal needs and specifications.
	
	;Main Monitor, Horizontal
	hresolution1 := 1920
	
	;Main Monitor, Vertical
	vresolution1 := 1080
	
	
	
	; Second Monitor, Horizontal
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
	
	
	;Set the value to 1 if you don't want the sound keys.
	disablesound := 0
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	title11 := null
	title12 := null
	title21 := null
	title22 := null
	title23 := null
	title24 := null
	title25 := null
	titletemp := null
	
	format:= 1
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------

	
	^NumpadHome::
	{
		WinGetTitle, title, A
		remove(title)
		addMonitorOne(title)
	return
	}

	
	^NumpadUp::
	{
		WinGetTitle, title, A
		remove(title)
		addMonitorTwo(title)
	return
	}		
	
	^NumpadPgUp::
	{
		if (format = 3)
		{
			format := 1
		return
		}
		format := (format + 1)
	return
	}
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	;Volume Control
	
	
	^NumpadAdd::
	{
		if (disablesound = 0)
		{
			run nircmd.exe changesysvolume 500
		}
	return
	}
	
	^NumpadSub::
	{	
		if (disablesound = 0)
		{
			run nircmd.exe changesysvolume -500
		}
	return
	}
	
	^NumpadEnter::
	{
		if (disablesound = 0)
		{
			run nircmd.exe mutesysvolume 2
		}
	return
	}
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------

	
	^NumpadRight::
	{
		WinGetTitle, title, A
		if(title = title11 && title12 != null)
		{
			titletemp := title11
			title11 := title12
			title12 := titletemp
			addMonitorOne()
		return
		}
		if(title = title21 && title22 != null)
		{
			titletemp := title21
			title21 := title22
			title22 := titletemp
			addMonitorTwo()
		return
		}
		if(title = title21 && title22 != null)
		{
			titletemp := title21
			title21 := title22
			title22 := titletemp
			addMonitorTwo()
		return
		}
		if(title = title21 && title22 != null)
		{
			titletemp := title21
			title21 := title22
			title22 := titletemp
			addMonitorTwo()
		return
		}
		if(title = title21 && title22 != null)
		{
			titletemp := title21
			title21 := title22
			title22 := titletemp
			addMonitorTwo()
		return
		}
	return
	}	
	
	
	
	
	^Up::
	{
		vborder := (vborder - 1)
		hborder := (hborder - 1)
		addMonitorOne()
		addMonitorTwo()
	}
	
	
	^Down::
	{
		vborder := (vborder + 1)
		hborder := (hborder + 1)
		addMonitorOne()
		addMonitorTwo()
	}
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	;Remove title and border
	!^NumpadClear::
	{
		WinSet, Style, -0x800000, A
		WinSet, Style, ^0xC00000, A    
	return
	}
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	addMonitorOne(titletemp = "null")
	{
		global
		if(title11 = null)
		{
			title11 := titletemp
			WinMove, %title11%,,     (hborder + hborderextra + ltaskbar1), (ttaskbar1 + vborder), (hresolution1 - hborder - hborder - hborderextra - hborderextra - ltaskbar1 - rtaskbar1), (vresolution1 - ttaskbar1 - vborder - vborder - btaskbar1)
		return
		}
		if(title11 != null && title12 = null)
		{
			title12 := titletemp
			WinMove, %title11%,,     (hborder + hborderextra + ltaskbar1), (ttaskbar1 + vborder), (hwindow1), (vresolution1 - ttaskbar1 - vborder - vborder - btaskbar1)
			WinMove, %title12%,,     (hborder + hborder + hwindow1 + hborderextra + ltaskbar1),  (ttaskbar1 + vborder), (hresolution1 - hborder - hwindow1 - hborder - hborder - hborderextra - hborderextra - ltaskbar1 - rtaskbar1), (vresolution1 - ttaskbar1 - vborder - vborder - btaskbar1)
		return
		}
		if(title11 != null && title12 != null)
		{
			
		return
		}
	}
	
	addMonitorTwo(titletemp = "null")
	{
		global
		if(title21 = null)
		{
			title21 := titletemp
			WinMove, %title21%,,     (hborder + (monitorpos * hresolution2) + hborderextra + ltaskbar2), (ttaskbar2 + vborder + monitoroff), (hresolution2 - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
		return
		}
		if(title21 != null && title22 = null)
		{
			title22 := titletemp
			WinMove, %title21%,,     (hborder + (monitorpos * hresolution2) + hborderextra + ltaskbar2),  (ttaskbar2 + vborder + monitoroff), (hwindow2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
			WinMove, %title22%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra + ltaskbar2), (ttaskbar2 + vborder + monitoroff), (hresolution2 - hborder - hwindow2 - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
		return
		}
		if(title21 != null && title22 != null && title23 = null)
		{
			title23 := titletemp
			WinMove, %title21%,,     (hborder + (monitorpos * hresolution2) + hborderextra + ltaskbar2),  (ttaskbar2 + vborder + monitoroff), (hwindow2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
			WinMove, %title22%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra + ltaskbar2), (ttaskbar2 + vborder + monitoroff), (hwindow34), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
			WinMove, %title23%,,      (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hwindow34 + hborder + ltaskbar2), (ttaskbar2 + vborder + monitoroff), (hresolution2 - hborder - hwindow2 - hborder - hwindow34 - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
		return
		}
		if(title21 != null && title22 != null && title23 != null && title24 = null)
		{
			title24 := titletemp
			WinMove, %title21%,,     (hborder + (monitorpos * hresolution2) + hborderextra + ltaskbar2),  (ttaskbar2 + vborder + monitoroff), (hwindow2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
			WinMove, %title22%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra  + ltaskbar2),  (ttaskbar2 + vborder + monitoroff), (hwindow34), (vwindow3)
			WinMove, %title23%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra + ltaskbar2), (ttaskbar2 + vborder + vwindow3 + vborder + monitoroff), (hwindow34), (vresolution2 - ttaskbar2 - vborder - vwindow3 - vborder - vborder - btaskbar2)
			WinMove, %title24%,,      (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hwindow34 + hborder + ltaskbar2), (ttaskbar2 + vborder + monitoroff), (hresolution2 - hborder - hwindow2 - hborder - hwindow34 - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
		return
		}
		if(title21 != null && title22 != null && title23 != null && title24 != null && title25 = null)
		{
			title25 := titletemp
			WinMove, %title21%,,     (hborder + (monitorpos * hresolution2) + hborderextra + ltaskbar2),  (ttaskbar2 + vborder + monitoroff), (hwindow2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
			WinMove, %title22%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra  + ltaskbar2),  (ttaskbar2 + vborder + monitoroff), (hwindow34), (vwindow3)
			WinMove, %title23%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra  + ltaskbar2 + hwindow34 + hborder),  (ttaskbar2 + vborder + monitoroff), ((hresolution2 - hborder - hwindow2 - hborder - hwindow34 - hborder - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2) / 2), (vwindow3)
			WinMove, %title24%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra  + ltaskbar2 + hwindow34 + hborder + ((hresolution2 - hborder - hwindow2 - hborder - hwindow34 - hborder - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2) / 2) + hborder),  (ttaskbar2 + vborder + monitoroff),  ((hresolution2 - hborder - hwindow2 - hborder - hwindow34 - hborder - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2) / 2), (vwindow3)
			WinMove, %title25%,,    (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra + ltaskbar2), (ttaskbar2 + vborder + vwindow3 + vborder + monitoroff), (hresolution2 - hborder - hwindow2 - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2), (vresolution2 - ttaskbar2 - vborder - vwindow3 - vborder - vborder - btaskbar2)
		return
		}
		if(title21 != null && title22 != null && title23 != null && title24 != null && title25 != null)
		{
			
		return
		}
	}
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	remove(title)
	{
		global
		if (title = title11)
		{
			title11 := null
		}
		if (title = title12)
		{
			title12 := null
		}
		if (title = title13)
		{
			task13 := null
		}
		if (title = title21)
		{
			title21 := null
		}
		if (title = title22)
		{
			title22 := null
		}
		if (title = title23)
		{
			task23 := null
		}
		if (title = title24)
		{
			title24 := null
		}
		if (title = title25)
		{
			title25 := null
		}
	}