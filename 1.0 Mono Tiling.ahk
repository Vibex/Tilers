    NumpadHome::
            WinMove,A,, -1906, 29, 1380, 1037
    return
    ^NumpadHome::
            WinMove,A,, -1906, 29, 866, 1037
    return
    NumpadUp::
            WinMove,A,, -512, 29, 497, 284
    return
    ^NumpadUp::
            WinMove,A,, -1024, 29, 497, 284
    return
    NumpadLeft::
            WinMove,A,, -512, 329, 497, 736
    return
    ^NumpadLeft::
            WinMove,A,, -1024, 327, 1010, 736
    return
    +NumpadLeft::
            WinMove,A,, -1024, 327, 497, 739
    return
    ^+NumpadLeft::
            WinMove,A,, -512, 327, 498, 105
    return
    !^NumpadLeft::
            WinMove,A,, -512, 446, 498, 620
    return
    NumpadPgUp::
            WinMove,A,, 14, 29, 1378, 1035
    return
    NumpadRight::
            WinMove,A,, 14, 29, 809, 502
    return
    NumpadAdd::
            WinMove,A,, 14, 329 , 677, 731
    return
    NumpadClear::
            WinMove,A,, 1948, 28,1224, 968
    return
    NumpadEnd::
            WinMove,A,, 14, 29, 931, 1037
    return
    NumpadPgDn::
            WinMove,A,, 969, 29, 932, 1037
    return
    NumpadSub::
            WinMove,A,, 14, 29, 1892, 1037
    return
    ^NumpadSub::
            WinMove,A,, -1906, 29, 1892, 1037
    return
    NumpadIns::
            WinMove,A,, 14, 30, 677, 1025
    return
    NumpadDel::
            WinGetPos,X,Y,W,H,A
            WinMove,A,,1920/2-W/2,1080/2-H/2
    return