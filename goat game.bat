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
echo choose now.....
choice /c:123 /n /m "door:"
IF ERRORLEVEL 3 goto door3 
IF ERRORLEVEL 2 goto door2
IF ERRORLEVEL 1 goto door1

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
:end
exit
