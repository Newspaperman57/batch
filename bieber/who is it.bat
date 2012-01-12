echo off
cls
"goto "fast test""
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
:Menu
cls
echo.
echo Hello %name%
echo What do you want to do?
echo press 1 for start game
echo press 2 for highscores
echo press 3 for reset highscores
echo press 4 for exit
choice -n -c 1234
if %errorlevel%==1 goto start
if %errorlevel%==2 goto showhighscore
if %errorlevel%==3 goto Delhighscores1
if %errorlevel%==4 exit

:Start
cls
echo .
echo WELCOME to simple Dance Test!
ping 1.1.1.1 -n 2 -w 6000 > ping.log
cls
Echo.
echo The test will begin in 5 seconds
ping 1.1.1.1 -n 2 -w 100 > ping.log
cls
Echo.
echo The test will begin in 4 seconds
ping 1.1.1.1 -n 2 -w 100 > ping.log
cls
Echo.
echo The test will begin in 3 seconds
ping 1.1.1.1 -n 2 -w 100 > ping.log
cls
Echo.
echo The test will begin in 2 seconds
ping 1.1.1.1 -n 2 -w 100 > ping.log
cls
Echo.
echo The test will begin in 1 seconds
ping 1.1.1.1 -n 2 -w 100 > ping.log
cls
Echo.
echo The test will begin in 0 seconds
cls
set points=-1
:"fast test"
goto Game
:Game
set /a points+ = 1 >null.log
goto Random_letter
:game2
cls
Echo. 
echo Points: %points%
echo Press %rndl%
Choice /n /c:abcdefghijklmnopqrstuvxyz
call numbertoletter.bat
if %answer%==%rndl% goto game
Goto end
Ping 1.1.1.1 -n 2 -w 200 % Ping.log


:Random_letter
Setlocal EnableDelayedExpansion
Set _RNDLength=1
Set _Alphanumeric=abcdefghijklmnopqrstuvxyz
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
set rndl=!_RndAlphaNum!
Goto Game2

:end
if %points% gtr 1 set Pointtxt=Points
if %points% equ 1 set Pointtxt=Point
echo.
echo GAME OVER
echo.
echo %name% got %points% %Pointtxt%
echo %name% got %points% %Pointtxt% >>Highscore.txt
echo. >>Highscore.txt
Type highscore.txt
echo %name% >>Names.txt
pause
goto menu

:Delhighscores1
cls
Echo Are you sure you want to delete ALL the highscores? (yes, no)
set /p answerhighscores=
if %answerhighscores%==yes del highscore.txt
if %answerhighscores%==no goto menu
Echo Highscores deleted by %name% >>game.log
echo %date% %time% >>game.log
echo. >>game.log
echo. >>highscore.txt
echo returning to menu
Ping 1.1.1.1 -n 2 -w 200
goto menu

:showhighscore
cls
type highscore.txt
pause
ping 1.1.1.1 -n 1 >ping.log
goto rafnas

