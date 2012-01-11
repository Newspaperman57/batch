echo off
cls
goto Begin
:Begin
echo.
echo Hello and welcome!
ping 1.1.1.1 -n 2 -w 200 > ping.log
cls
echo.
echo Please enter your name:
set /p name=
cls
echo.
echo hello %name%
Goto start
:Start
echo .
echo WELCOME to simple Dance Test!
ping 1.1.1.1 -n 2 -w 300
cls
Echo.
echo The test will begin in 5 seconds
ping 1.1.1.1 -n 2 -w 100
cls
Echo.
echo The test will begin in 4 seconds
ping 1.1.1.1 -n 2 -w 100
cls
Echo.
echo The test will begin in 3 seconds
ping 1.1.1.1 -n 2 -w 100
cls
Echo.
echo The test will begin in 2 seconds
ping 1.1.1.1 -n 2 -w 100
cls
Echo.
echo The test will begin in 1 seconds
ping 1.1.1.1 -n 2 -w 100
cls
Echo.
echo The test will begin in 0 seconds
cls
goto Game
:Game
goto Random_letter
:game 2
Echo. 
echo Press !_RndAlphaNum!
if !_RndAlphaNum!=> goto game
Ping 1.1.1.1 -n 2 -w 200 > Ping.log


:Random_letter
Setlocal EnableDelayedExpansion
Set _RNDLength=1
Set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET _RndAlphaNum=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET _RndAlphaNum=!_RndAlphaNum!!_Alphanumeric:~%_RND%,1!
If !_count! lss %_RNDLength% goto _loop
Echo Random string is !_RndAlphaNum!
Goto Game2
pause