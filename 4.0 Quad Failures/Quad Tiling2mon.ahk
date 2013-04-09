	
	
	;By Vibex !FL2K7hnbFY 
	;If you have any suggestion or criticism you can contact me in the curret /w/ thread or in irc (My irc name is also Vibex). I also frequent #rice so you can check there too.
	
	;Hotkeys
	
	
	;Main tiling positions
	;***xDemonessx says, "Make sure to have numlock off!"***
	;Ctrl + Numpad Home: Secondary window on your main monitor (Good for file browsers and secondary programs).
	;Ctrl + Numpad Up: Primary window on your main monitor (Good for web browsers or IDE).
	;Ctrl + Numpad PgUp: Fullscreen on your main monitor (Good for large programs).
	;Ctrl + Numpad Left: Secondary window on your second monitor (Good for smaller programs or music players).
	;Ctrl + Numpad Clear (Center Key): Primary window on your second monitor (Good for web browsers).
	;Ctrl + Numpad Right: Fullscreen on your second monitor (Good for large programs).
	;Ctrl + Numpad End: A tiered window at the top of your second monitor next to the secondary window (Good for chat clients, download clients, and other small programs).
	;Ctrl + Numpad Down: A tiered window next beneath the other tiered window (Good for larger Chat clients and small web browsers).
	;Ctrl + Numpad PgDn: A thirdary(?) window next to the two other tiered windows on your second monitor (Good for web browsers and text editors).
	
	;Secondary tiling Positions
	;***You need Numlock on for these keys.***
	;Ctrl + Numpad 7: Puts a window next to the upper tiered window on your second monitor (Good for small chat clients).
	;Ctrl + Numpad 8: Puts a window next to the window next to the upper tiered window on your second monitor (Good for small chat clients).
	;Ctrl + Numpad 9: Puts a window Streching from next to the secondary window on your second monitor to the specified border of the second monitor (Good for watching twitch streams or youtube videos without losing the rest of your screen).
	
	;Center Tiling
	;***You need Numlock on for these keys.***
	;Ctrl + Numpad 5: Center the window on your secondary monitor. If the window doesn't fit the monitors resolution, It will resize it.
	;Ctrl + Numpad 6: Center the window on your main monitor. If the window doesn't fit the monitors resolution, It will resize it.
	
	;On the fly size change.
	;***xDemonessx says, "Make sure to have numlock off!"***
	;Ctrl + Alt + Left: Moves the border between windows left.
	;Ctrl + Alt + Right: Moves the border between windows right.
	;Ctrl + Alt + Up: Moves the border between the tiered window up.
	;Ctrl + Alt + Down: Moves the border between the tiered window down.
	
	;Sound control
	;Ctrl + Numpad Plus: Increase volume.
	;Ctrl + Numpad Subtract: Decrease volume.
	;Ctrl + Numpad Enter: Mute volume.
	
	
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------	
	
	
	;Edit the below variables to fit your personal needs and specifications.
	
	;Main Monitor, Horizontal.
	hresolution1 := 1920
	
	;Main Monitor, Vertical.
	vresolution1 := 1080
	
	
	
	; Second Monitor, Horizontal.
	hresolution2 := 1920
	
	;Second Monitor, Vertical.
	vresolution2 := 1080
	
	;Second Monitor Position, Set to -1 if the monitor is on the Left or 1 if the monitor is on the Right.
	monitorpos := -1
	
	;Second monitor offset, If your monitor is not aligned at the top, set the number of pixels that it is off by to this value (Up is negative, Down is positive).
	monitoroff := 0
	
	
	
	;The border/boundary you want between all your windows, horizontal.
	hborder := 6
	
	;The border/boundary you want between all your windows, vertical.
	vborder := 6
	
	;This border value is an extra value you can add to the outer sides of your windows, horizontal.
	hborderextra := 0
	
	
	
	;The first monitors taskbar height, top.
	ttaskbar1 := 15
	
	;The second monitors taskbar height, top.
	ttaskbar2 := 15
	
	;The first monitors taskbar height, bottom.
	btaskbar1 := 0
	
	;The second monitors taskbar height, bottom.
	btaskbar2 := 0
	
	;The first monitors taskbar height, right.
	rtaskbar1 := 0
	
	;The second monitors taskbar height, right.
	rtaskbar2 := 0
	
	;The first monitors taskbar height, left.
	ltaskbar1 := 0
	
	;The second monitors taskbar height, left.
	ltaskbar2 := 0
	
	
	
	;Width of the secondary window on monitor 1.
	hwindow1 := 446
	
	;Width of the secondary window on monitor 2.
	hwindow2 := 446
	
	;Width of the tiered windows on monitor 2.
	hwindow34 := 446
	
	;Height of the upper tier window on monitor 2.
	vwindow3 := 191
	
	;Speed/Number of pixels the window moves when using the ctrl + alt + arrowkey commands.
	;Speed, Horizontal.
	hspeed := 40
	
	;Speed, Vertical.
	vspeed := 20
	
	
	
	;***For sound keys to work you have to have nircmd installed.***
	;Set the value to 1 if you don't want the sound keys or 0 to enable them.
	disablesound := 0
	
	;Volume change amount increasing volume (must be a positive number).
	volchangeu := 1000
	
	;Volume change amount decreasing volume (must be a negative number). Set to "(volchangeu * -1)", without the quotes to make the value the opposite of the increase value.
	volchanged := (volchangeu * -1)
	
	
	
	;Set the value to 1 if you don't want to hear a beep when changing the volume or 0 to enable it.
	disablebeep := 1
	
	;Set the frequency of the beep (between 37 and 32767).
	freq := 1000
	
	;Set the duration of the beep in milliseconds.
	dura := 100
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------	
	
	
	;Ignore all of these.
	task1 := empty
	task2 := empty
	task3:= empty
	task4 := empty
	task5 := empty
	task6 := empty
	task7 := empty
	task8 := empty
	task9 := empty
	task10 := empty
	task11 := empty
	task12 := empty
	task13 := empty
	task14 := empty
	task15 := empty
	tasktemp := empty
	widthtemp := empty
	heighttemp := empty
	xtemp := empty
	ytemp := empty
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	
	;Don't edit any of the information that moves the windows. If you do at least know a little about ahk and read through all the code first.
	^NumpadHome::
			WinGetTitle, title7, A
			task7 := title7
			removeValue(task7, 7)
            WinMove, %task7%,,     (hborder + hborderextra + ltaskbar1), (ttaskbar1 + vborder), (hwindow1), (vresolution1 - ttaskbar1 - vborder - vborder - btaskbar1)
		return
	^NumpadUp::
			WinGetTitle, title8, A
			task8 := title8
			removeValue(task8, 8)
            WinMove, %task8%,,     (hborder + hborder + hwindow1 + hborderextra + ltaskbar1),  (ttaskbar1 + vborder), (hresolution1 - hborder - hwindow1 - hborder - hborder - hborderextra - hborderextra - ltaskbar1 - rtaskbar1), (vresolution1 - ttaskbar1 - vborder - vborder - btaskbar1)
    	return 
	^NumpadPgUp::
			WinGetTitle, title9, A
			task9 := title9
			removeValue(task9, 9)
            WinMove, %task9%,,     (hborder + hborderextra + ltaskbar1), (ttaskbar1 + vborder), (hresolution1 - hborder - hborder - hborderextra - hborderextra - ltaskbar1 - rtaskbar1), (vresolution1 - ttaskbar1 - vborder - vborder - btaskbar1)
    	return
		
		
	
	^NumpadLeft::
			WinGetTitle, title4, A
			task4 := title4
			removeValue(task4, 4)
            WinMove, %task4%,,     (hborder + (monitorpos * hresolution2) + hborderextra + ltaskbar2),  (ttaskbar2 + vborder + monitoroff), (hwindow2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
    	return

	^NumpadClear::
			WinGetTitle, title5, A
			task5 := title5
			removeValue(task5, 5)
			WinMove, %task5%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra + ltaskbar2), (ttaskbar2 + vborder + monitoroff), (hresolution2 - hborder - hwindow2 - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
    	return
	
	^NumpadRight::
			WinGetTitle, title6, A
			task6 := title6
			removeValue(task6, 6)
            WinMove, %task6%,,     (hborder + (monitorpos * hresolution2) + hborderextra + ltaskbar2), (ttaskbar2 + vborder + monitoroff), (hresolution2 - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
    	return

	
	
	^NumpadEnd::
			WinGetTitle, title1, A
			task1 := title1
			removeValue(task1, 1)
            WinMove, %task1%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra  + ltaskbar2),  (ttaskbar2 + vborder + monitoroff), (hwindow34), (vwindow3)
    	return

	^NumpadDown::
			WinGetTitle, title2, A
			task2 := title2
			removeValue(task2, 2)
			WinMove, %task2%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra + ltaskbar2), (ttaskbar2 + vborder + vwindow3 + vborder + monitoroff), (hwindow34), (vresolution2 - ttaskbar2 - vborder - vwindow3 - vborder - vborder - btaskbar2)
    	return
	
	^NumpadPgDn::
			WinGetTitle, title3, A
			task3 := title3
			removeValue(task3, 3)
            WinMove, %task3%,,      (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hwindow34 + hborder + ltaskbar2), (ttaskbar2 + vborder + monitoroff), (hresolution2 - hborder - hwindow2 - hborder - hwindow34 - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2), (vresolution2 - ttaskbar2 - vborder - vborder - btaskbar2)
    	return
		
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------


	^Numpad7::
			WinGetTitle, title12, A
			task12 := title12
			removeValue(task12, 12)
			WinMove, %task12%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra  + ltaskbar2 + hwindow34 + hborder),  (ttaskbar2 + vborder + monitoroff), ((hresolution2 - hborder - hwindow2 - hborder - hwindow34 - hborder - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2) / 2), (vwindow3)
		return
		
	^Numpad8::
			WinGetTitle, title13, A
			task13 := title13
			removeValue(task13, 13)
			WinMove, %task13%,,     (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra  + ltaskbar2 + hwindow34 + hborder + ((hresolution2 - hborder - hwindow2 - hborder - hwindow34 - hborder - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2) / 2) + hborder),  (ttaskbar2 + vborder + monitoroff),  ((hresolution2 - hborder - hwindow2 - hborder - hwindow34 - hborder - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2) / 2), (vwindow3)
		return
	
	^Numpad9::
			WinGetTitle, title14, A
			task14 := title14
			removeValue(task14, 14)
			WinMove, %task14%,,    (hborder + (monitorpos * hresolution2) + hwindow2 + hborder + hborderextra + ltaskbar2), (ttaskbar2 + vborder + vwindow3 + vborder + monitoroff), (hresolution2 - hborder - hwindow2 - hborder - hborder - hborderextra - hborderextra - ltaskbar2 - rtaskbar2), (vresolution2 - ttaskbar2 - vborder - vwindow3 - vborder - vborder - btaskbar2)
		return
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------


	;Center Tiles
	
	^Numpad6::
	{
			WinGetTitle, title10, A
			task10 := title10
			removeValue(task10, 10)
            WinGetPos,,, width10, height10, %title10%
			
			if (height10 > vresolution1)
			{
			
				if (width10 > hresolution1)
				{
					WinMove, %task10%,,     0, 0, (hresolution1), (vresolution1)
				return
				}
				
				WinMove, %task10%,,      ((ltaskbar1 / 2) - (rtaskbar1 / 2) + (hresolution1 / 2) - (width10 / 2)), 0, (width10), (vresolution1)
			return
			}
			
			if (width10 > hresolution1)
			{
				WinMove, %task10%,,     0, (ttaskbar1 / 2) - (btaskbar1 / 2) + (vresolution1 / 2)-(height10 / 2), (hresolution1), (height10)
			return
			}
			
			WinMove, %task10%,,      ((ltaskbar1 / 2) - (rtaskbar1 / 2) + (hresolution1 / 2) - (width10 / 2)), ((ttaskbar1 / 2) - (btaskbar1 / 2) + (vresolution1 / 2)-(height10 / 2))
    	return
	}
	
	^Numpad5::
	{
			WinGetTitle, title11, A
			task11 := title11
			removeValue(task11, 11)
            WinGetPos,,, width11, height11, %title11%
			
			if (height11 > vresolution2)
			{
			
				if (width11 > hresolution2)
				{
					WinMove, %task11%,,     (monitorpos * hresolution2), (monitoroff), (hresolution2), (vresolution2)
				return
				}
				
				WinMove, %task11%,,      ((ltaskbar2 / 2) - (rtaskbar2 / 2) + ((monitorpos * hresolution2) / 2)) - (width11 / 2), (monitoroff), (width11), (vresolution2)
			return
			}
			
			if (width11 > hresolution2)
			{
				WinMove, %task11%,,     (monitorpos * hresolution2), (monitoroff + (ttaskbar2 / 2) - (btaskbar2 / 2) + (vresolution2 / 2)-(height11 / 2) + vborder + vborder + 2), (hresolution2), (height11)
			return
			}
			
			WinMove, %task11%,,     ((ltaskbar2 / 2) - (rtaskbar2 / 2) + ((monitorpos * hresolution2) / 2))-(width11 / 2), (monitoroff + (ttaskbar2 / 2) - (btaskbar2 / 2) + (vresolution2 / 2)-(height11 / 2))
    	return
	}
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------


	;On the fly size edit
	
	!^Right::
	{
			WinGetTitle, titletemp, A
			tasktemp := titletemp
			if (tasktemp = task7 || tasktemp = task8 || tasktemp = task9)
			{
				if (tasktemp = task9)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %tasktemp%
					WinMove, %tasktemp%,,	(xtemp + hspeed), (ytemp), (widthtemp - hspeed), (heighttemp)
				return
				}
				if (tasktemp = task7 || tasktemp = task8)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task7%
					WinMove, %task7%,,	(xtemp), (ytemp), (widthtemp + hspeed), (heighttemp)
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task8%
					WinMove, %task8%,,	(xtemp + hspeed), (ytemp), (widthtemp - hspeed), (heighttemp)
				return
				}
			}
			if (tasktemp = task1 || tasktemp = task2 || tasktemp = task3 || tasktemp = task4 || tasktemp = task5 || tasktemp = task6)
			{
				if (tasktemp = task6)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %tasktemp%
					WinMove, %tasktemp%,,	(xtemp + hspeed), (ytemp), (widthtemp - hspeed), (heighttemp)
				return
				}
				if (tasktemp = task4 || tasktemp = task5)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task4%
					WinMove, %task4%,,	(xtemp), (ytemp), (widthtemp + hspeed), (heighttemp)
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task5%
					WinMove, %task5%,,	(xtemp + hspeed), (ytemp), (widthtemp - hspeed), (heighttemp)
				return
				}
				if (tasktemp = task1 || tasktemp = task2 || tasktemp = task3)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task1%
					WinMove, %task1%,,	(xtemp), (ytemp), (widthtemp + hspeed), (heighttemp)
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task2%
					WinMove, %task2%,,	(xtemp), (ytemp), (widthtemp + hspeed), (heighttemp)
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task3%
					WinMove, %task3%,,	(xtemp + hspeed), (ytemp), (widthtemp - hspeed), (heighttemp)
				return
				}
			return
			}
			
			;Finish fixing the centering scripts
			
			if (tasktemp = task10)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task10%
				WinMove, %task10%,,       (ltaskbar1 / 2) - (rtaskbar1 / 2) + ((hresolution1) / 2) - ((widthtemp - hspeed) / 2), ((ttaskbar1 / 2) - (btaskbar1 / 2) + (vresolution1 / 2)-(heighttemp / 2)), (widthtemp - hspeed), (heighttemp)
			return
			}
			if (tasktemp = task11)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task11%
				WinMove, %task11%,,       (ltaskbar2 / 2) - (rtaskbar2 / 2) + ((monitorpos * hresolution2) / 2) - ((widthtemp - hspeed) / 2), (monitoroff + (ttaskbar2 / 2) - (btaskbar2 / 2) + (vresolution2 / 2)-(heighttemp / 2)), (widthtemp - hspeed), (heighttemp)
			return
			}
			
		return
	}
	
	!^Left::
	{
			WinGetTitle, titletemp, A
			tasktemp := titletemp
			if (tasktemp = task7 || tasktemp = task8 || tasktemp = task9)
			{
				if (tasktemp = task9)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %tasktemp%
					WinMove, %tasktemp%,,	(xtemp - hspeed), (ytemp), (widthtemp + hspeed), (heighttemp)
				return
				}
				if (tasktemp = task7 || tasktemp = task8)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task7%
					WinMove, %task7%,,	(xtemp), (ytemp), (widthtemp - hspeed), (heighttemp)
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task8%
					WinMove, %task8%,,	(xtemp - hspeed), (ytemp), (widthtemp + hspeed), (heighttemp)
				return
				}
			}
			if (tasktemp = task1 || tasktemp = task2 || tasktemp = task3 || tasktemp = task4 || tasktemp = task5 || tasktemp = task6)
			{
				if (tasktemp = task6)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %tasktemp%
					WinMove, %tasktemp%,,	(xtemp - hspeed), (ytemp), (widthtemp + hspeed), (heighttemp)
				return
				}
				if (tasktemp = task4 || tasktemp = task5)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task4%
					WinMove, %task4%,,	(xtemp), (ytemp), (widthtemp - hspeed), (heighttemp)
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task5%
					WinMove, %task5%,,	(xtemp - hspeed), (ytemp), (widthtemp + hspeed), (heighttemp)
				return
				}
				if (tasktemp = task1 || tasktemp = task2 || tasktemp = task3)
				{
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task1%
					WinMove, %task1%,,	(xtemp), (ytemp), (widthtemp - hspeed), (heighttemp)
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task2%
					WinMove, %task2%,,	(xtemp), (ytemp), (widthtemp - hspeed), (heighttemp)
					WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task3%
					WinMove, %task3%,,	(xtemp - hspeed), (ytemp), (widthtemp + hspeed), (heighttemp)
				return
				}
			}
			if (tasktemp = task10)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task10%
				WinMove, %task10%,,      (ltaskbar1 / 2) - (rtaskbar1 / 2) + ((hresolution1) / 2) - ((widthtemp + hspeed) / 2), ((ttaskbar1 / 2) - (btaskbar1 / 2) + (vresolution1 / 2)-(heighttemp / 2)), (widthtemp + hspeed), (heighttemp)
			return
			}
			if (tasktemp = task11)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task11%
				WinMove, %task11%,,      (ltaskbar2 / 2) - (rtaskbar1 / 2) + ((monitorpos * hresolution2) / 2) - ((widthtemp + hspeed) / 2), (monitoroff + (ttaskbar2 / 2) - (btaskbar2 / 2) + (vresolution2 / 2)-(heighttemp / 2)), (widthtemp + hspeed), (heighttemp)
			return
			}
			
		return
	}
	
	!^Up::
	{
			WinGetTitle, titletemp, A
			tasktemp := titletemp
			if (tasktemp = task1 || tasktemp = task2)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task1%
				WinMove, %task1%,,	(xtemp), (ytemp), (widthtemp), (heighttemp - vspeed)
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task2%
				WinMove, %task2%,,	(xtemp), (ytemp - vspeed), (widthtemp), (heighttemp + vspeed)
			return
			}
			if (tasktemp = task10)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task10%
				WinMove, %task10%,,       (ltaskbar1 / 2) - (rtaskbar1 / 2) + ((hresolution1) / 2) - (widthtemp / 2), (ttaskbar1 / 2) - (btaskbar1 / 2) + ((vresolution1 - vspeed) / 2)-((heighttemp / 2)), (widthtemp), (heighttemp + vspeed)
			return
			}
			if (tasktemp = task11)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task11%
				WinMove, %task11%,,      (ltaskbar2 / 2) - (rtaskbar1 / 2) + ((monitorpos * hresolution2) / 2) - ((widthtemp) / 2), (monitoroff + (ttaskbar2 / 2) - (btaskbar2 / 2) + ((vresolution2 - vspeed) / 2)-(heighttemp / 2)), (widthtemp), (heighttemp + vspeed)
			return
			}
			
		return
	}
	
	!^Down::
	{
			WinGetTitle, titletemp, A
			tasktemp := titletemp
			if (tasktemp = task1 || tasktemp = task2)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task1%
				WinMove, %task1%,,	(xtemp), (ytemp), (widthtemp), (heighttemp + vspeed)
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task2%
				WinMove, %task2%,,	(xtemp), (ytemp + vspeed), (widthtemp), (heighttemp - vspeed)
			return
			}
			if (tasktemp = task10)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task10%
				WinMove, %task10%,,      (ltaskbar1 / 2) - (rtaskbar1 / 2) + ((hresolution1) / 2) - (widthtemp / 2), (ttaskbar1 / 2) - (btaskbar1 / 2) + ((vresolution1 + vspeed) / 2)-((heighttemp / 2)), (widthtemp), (heighttemp - vspeed)
			return
			}
			if (tasktemp = task11)
			{
				WinGetPos, xtemp, ytemp, widthtemp, heighttemp, %task11%
				WinMove, %task11%,,      (ltaskbar2 / 2) - (rtaskbar1 / 2) + ((monitorpos * hresolution2) / 2) - ((widthtemp) / 2), (monitoroff + (ttaskbar2 / 2) - (btaskbar2 / 2) + ((vresolution2 + vspeed) / 2)-(heighttemp / 2)), (widthtemp), (heighttemp - vspeed)
			return
			}
			
		return
	}
	
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	;Volume Control
	
	
	^NumpadAdd::
	{
		if (disablesound = 0)
		{
			run nircmd.exe changesysvolume %volchangeu%
			if (disablebeep = 0)
			{
				SoundBeep, %freq%, %dura%
			}
		}
	return
	}
	
	^NumpadSub::
	{	
		if (disablesound = 0)
		{
			run nircmd.exe changesysvolume %volchanged%
			if (disablebeep = 0)
			{
				SoundBeep, %freq%, %dura%
			}
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
	
	
	;Remove title and border
	!^NumpadClear::
	{
		WinSet, Style, -0x800000, A
		WinSet, Style, ^0xC00000, A    
	return
	}
	
	;-------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------
	
	
	;Remove the windows value from all other previous positions.
	
	removeValue(value, current)
	{
		global
		if (value = task1 && current != 1)
		{
			task1 := empty
		}
		if (value = task2 && current != 2)
		{
			task2 := empty
		}
		if (value = task3 && current != 3)
		{
			task3 := empty
		}
		if (value = task4 && current != 4)
		{
			task4 := empty
		}
		if (value = task5 && current != 5)
		{
			task5 := empty
		}
		if (value = task6 && current != 6)
		{
			task6 := empty
		}
		if (value = task7 && current != 7)
		{
			task7 := empty
		}
		if (value = task8 && current != 8)
		{
			task8 := empty
		}
		if (value = task9 && current != 9)
		{
			task9 := empty
		}
		if (value = task10 && current != 10)
		{
			task10 := empty
		}
		if (value = task11 && current != 11)
		{
			title11 := empty
		}
		if (value = task12 && current != 12)
		{
			title12 := empty
		}
		if (value = task13 && current != 13)
		{
			title13 := empty
		}
		if (value = task14 && current != 14)
		{
			title14 := empty
		}
		if (value = task14 && current != 14)
		{
			title14 := empty
		}
	}