f1::
Loop, read, C:\Users\Manjunath\Desktop\New Text Document (2)
{
    StringSplit, LineArray, A_LoopReadLine, %A_Tab%
    name := LineArray1
    contact := LineArray2
    address := LineArray3
    MsgBox, Fields are %name% %contact% %address%
}
^+p::
{
MsgBox, 4,, Would you like to continue? (press Yes or No)
IfMsgBox Yes
    MsgBox You pressed Yes.
else
    MsgBox You pressed No.
}