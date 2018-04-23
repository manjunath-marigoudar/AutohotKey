^l::
   Send, CJL_ADMIN{Tab}CJL_ADMIN`t
Return

::u::You
::m::Manjunath B M

::d::
FormatTime, CurrentDate,, MM/dd/yyyy  
SendInput %CurrentDate%
return

^+c::
{
Send, ^c
Sleep 50
Run, http://www.google.com/search?q=%clipboard%
Return
}

^+o::
{
Send, ^c
Sleep 50
Run, https://www.openair.com/index.pl?
sleep 2500
MouseClick, left, 250, 290
Send, {Text} Bridge Solutions Group
MouseClick, left, 515, 410
sleep 3000
MouseClick, left, 390, 120
sleep 3000
MouseClick, left, 100, 260
sleep 3000
MouseClick, left, 505, 415
sleep 3000
MouseClick, left, 1000, 420
Send, 8
Sleep 500
MouseClick, left, 1040, 415
sleep 100
MouseClick, left, 460, 410

FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\asdfghjkl.txt, 1
send %OutputVar%
sleep 2000
send {Enter}
FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\asdfghjkl.txt, 2
send %OutputVar%
sleep 2000
MouseClick, left, 815, 250
sleep 500
MouseClick, left, 1070, 415
Sleep 100
Send, 8
Sleep 100
MouseClick, left, 1114, 420
Sleep 1000
MouseClick, left, 550, 410
FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\asdfghjkl.txt, 3
send %OutputVar%
Sleep 1000
MouseClick, left, 815, 250
sleep 1000
{
MsgBox, 4,, Would you like to Save the changes? (press Yes or No)
IfMsgBox Yes
	{
    ;MsgBox You pressed Yes.
	MouseClick, left, 1260, 280
	Sleep 100
	}
else
	{
    ;MsgBox You pressed No.
	;MouseClick, left, 76, 56
	send, {F5}
	sleep 100	
	send {Enter}
	}
}

Return
}

^+b::
{
Send, ^c
Sleep 50
Run, https://www.openair.com/index.pl?
sleep 2500
MouseClick, left, 250, 290
Send, {Text} Bridge Solutions Group
MouseClick, left, 515, 410
sleep 3000
MouseClick, left, 390, 120
sleep 3000
MouseClick, left, 100, 260
sleep 3000
MouseClick, left, 505, 415
Return
}

^d::
SetKeyDelay, -1
Temp := ClipboardAll
Clipboard =
Send {End}+{home}^c
ClipWait, 2
Send {End}{Enter}%Clipboard%
Clipboard := Temp
return

^+d::
SetKeyDelay, -1
Temp := ClipboardAll
Clipboard =
Send ^c
ClipWait, 10
Send ^{End}{Enter}%Clipboard%
Clipboard := Temp
Return

BS := new BrightnessSetter()

PgUp::BS.SetBrightness(10)
PgDn::BS.SetBrightness(-10)

