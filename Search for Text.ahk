InputBox, SearchString, Search in laison.txt, Entering the string to search
Line := False
Loop, Read, C:\Users\Manjunath\Desktop\TimeSheets.txt
{
	If InStr(A_LoopReadLine, SearchString)
	
		If !Line
		{
			Line := A_LoopReadLine
			Continue ;second concerned line
		}
		Else
		{
			Line .= "`r`n" . A_LoopReadLine
			Break
		}
}
MsgBox, % Line