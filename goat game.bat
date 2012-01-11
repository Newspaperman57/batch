@echo off
cls
echo hello dear adventurer
ping 1.1.1.1.1 -n 1 -w 500000 >nul
cls
ping 1.1.1.1.1 -n 1 -w 500000 >nul
echo in this game you have a chance to win a car
ping 1.1.1.1.1 -n 1 -w 500000 >nul
cls
echo the only thing you will have to do is choose the right door
pause
cls
echo you are looking at three doors wich will you choose
ping 1.1.1.1.1 -n 1 -w 1000 >nul
echo door 1
ping 1.1.1.1.1 -n 1 -w 1000 >nul
echo door 2 
ping 1.1.1.1.1 -n 1 -w 1000 >nul
echo door 3
ping 1.1.1.1.1 -n 1 -w 10000 >nul

goto gen
:choice

echo choose now.....
echo %door%
choice /c:123 /n /m "door:"

IF ERRORLEVEL == %door% goto win 
IF NOT ERRORLEVEL == %door% goto lose


:door1
echo door 1
pause
goto end
:door2
echo door 2
pause
goto end
:door3
echo door 3
pause
goto end





:gen
Setlocal EnableDelayedExpansion
Set _RNDLength=1
Set _Alphanumeric=123
Set _Str=%_Alphanumeric%987654321
:_LenLoop
IF NOT "%_Str:~18%"=="" SET _Str=%_Str:~9%& SET /A _Len+=9& GOTO :_LenLoop
SET _tmp=%_Str:~9,1%
SET /A _Len=_Len+_tmp
Set _count=0
SET door=
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%%_Len%
SET door=!door!!_Alphanumeric:~%_RND%,1!
If !_count! lss %_RNDLength% goto _loop
goto choice


:end
exit


:win
echo you win!
ping 1.1.1.1.1 -n 1 -w 500000 >nul
pause


:lose
echo you DERP!
ping 1.1.1.1.1 -n 1 -w 500000 >nul
pause
