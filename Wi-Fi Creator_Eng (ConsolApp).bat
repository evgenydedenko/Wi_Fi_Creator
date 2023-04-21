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
IF %actionx%==1 goto ��tionx1
IF %actionx%==2 goto ��tionx2
IF %actionx%==3 goto ��tionx3
IF %actionx%==4 goto ��tionx4
IF %actionx%==5 goto ��tionx5


@ECHO.
cls
goto Begin

:��tionx1
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

:��tionx2
@ECHO.
netsh wlan start hostednetwork
@ECHO.
pause
cls
goto Begin

:��tionx3
@ECHO.
netsh wlan stop hostednetwork
@ECHO.
pause
cls
goto Begin

:��tionx4
@ECHO.
netsh wlan show hostednetwork
netsh wlan show hostednetwork setting=security

@ECHO.
pause
cls
goto Begin

:��tionx5
@ECHO.
ECHO WiFi Creator is a small tool to create and edit waypoints wirelessly.
ECHO Developer: Evgeny Dedenko.
ECHO E-mail: chernobyljeka@gmail.com	
ECHO Skype:  chernobyljek�skype
ECHO ICQ:    697188772
@ECHO. 
pause
cls
goto Begin







