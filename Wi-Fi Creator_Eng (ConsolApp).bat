@ECHO OFF

ECHO WiFi Creator by Evgeny Dedenko. 2013

@ECHO. 

:Begin

SET actionx=0

ECHO  Choose an action: 
@ECHO.     
ECHO  1. Create Wi-Fi point 
ECHO  2. Start Wi-Fi        
ECHO  3. Stop Wi-Fi         
ECHO  4. Network status     
ECHO  5. About WiFi Creator 
@ECHO.

SET /P actionx= 
IF %actionx%==1 goto àñtionx1
IF %actionx%==2 goto àñtionx2
IF %actionx%==3 goto àñtionx3
IF %actionx%==4 goto àñtionx4
IF %actionx%==5 goto àñtionx5


@ECHO.
cls
goto Begin

:àñtionx1
@ECHO.
ECHO Enter a name for SSID:
SET /P ssid_d=
ECHO Enter the SSID password:
SET /P pas_d=
netsh wlan set hostednetwork mode=allow ssid=%ssid_d% key=%pas_d%
@ECHO.
pause
cls
goto Begin

:àñtionx2
@ECHO.
netsh wlan start hostednetwork
@ECHO.
pause
cls
goto Begin

:àñtionx3
@ECHO.
netsh wlan stop hostednetwork
@ECHO.
pause
cls
goto Begin

:àñtionx4
@ECHO.
netsh wlan show hostednetwork
netsh wlan show hostednetwork setting=security

@ECHO.
pause
cls
goto Begin

:àñtionx5
@ECHO.
ECHO WiFi Creator is a small tool to create and edit waypoints wirelessly.
ECHO Developer: Evgeny Dedenko.
ECHO E-mail: chernobyljeka@gmail.com	
ECHO Skype:  chernobyljekàskype
ECHO ICQ:    697188772
@ECHO. 
pause
cls
goto Begin







