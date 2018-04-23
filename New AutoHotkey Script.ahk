#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
;SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


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

	 FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\TimeSheets.txt, %LineNum%
	 msgbox, %OutputVar%	
	 
	}
  else if(a_loopfield = "CJ:")
  {
    
	 LineNum = A_Index
	 
	 FileReadLine, OutputVar, C:\Users\Manjunath\Desktop\TimeSheets.txt, %LineNum%
	 msgbox, %OutputVar%
	 
	}
	else{
	msgbox,Oops !!!!!! try again

}