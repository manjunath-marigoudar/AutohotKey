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


;send {Enter}
;FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\TimeSheets.txt, 2
;send %OutputVar%
;sleep 2000
;MouseClick, left, 815, 250
;sleep 500
;MouseClick, left, 1070, 415
;Sleep 100
;Send, 8
;Sleep 100
;MouseClick, left, 1114, 420
;Sleep 1000
;MouseClick, left, 460, 410
;FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\TimeSheets.txt, 3
;send %OutputVar%
;Sleep 1000
;MouseClick, left, 815, 250
;sleep 1000

;MouseClick, left, 1150, 518
;send, 8
;Sleep 100
;MouseClick, left, 1186, 510
;sleep 1000
;MouseClick, left, 460, 410
;FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\TimeSheets.txt, 4
;send %OutputVar%
;Sleep 1000
;MouseClick, left, 815, 250
;sleep 1000


fileread, thistext, C:\Users\Manjunath\Desktop\TimeSheets.txt  ;get the text from the file into a variable

;Now, loop through each line and see if it matches your results:
var1=TELSTRA1
loop, parse, thistext, `r`n, `r`n
{
  if(a_loopfield = var1)
  {
     sleep 1000
	 LineNum = A_Index
	 msgbox, %LineNum%
	 MouseClick, left, 1000, 420
	 Send, 8
	 Sleep 500
	 MouseClick, left, 1040, 415
	 sleep 100
	 MouseClick, left, 460, 410
	 FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\TimeSheets.txt, %LineNum%
	 
	 send %OutputVar%
	 sleep 200
	 send %OutputVar%
	}
  else if(a_loopfield = "CJ:")
  {
    
	 LineNum = A_Index
	 MouseClick, left, 1150, 518
	 send, 8
	 Sleep 100
	 MouseClick, left, 1186, 510
 	 sleep 1000
	 MouseClick, left, 460, 410
	 FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\TimeSheets.txt, %LineNum%
	 send %OutputVar%
	 MouseClick, left, 815, 250
	}
}

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
	MouseClick, left, 777, 165
		}
}




Return
}