@ECHO OFF

ECHO WiFi Creator. ������� �������. 2013

@ECHO. 

:Begin

SET actionx=0

ECHO  �롨�� ����⢨�: 
@ECHO.     
ECHO  1. ������� ��� Wi-Fi.
ECHO  2. ����� Wi-Fi.       
ECHO  3. ��⠭����� Wi-Fi.         
ECHO  4. ����ﭨ� ��.   
ECHO  5. � Wi-Fi Creator.
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
ECHO ������ ��� SSID:
SET /P ssid_d=
ECHO ������ ��஫� SSID:
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
ECHO Wi-Fi Creator - �� �������� �⨫�� ��� ᮧ����� � ।���஢���� Wi-Fi �祪.
ECHO ���ࠡ��稪: ������� �������.
ECHO E-mail: chernobyljeka@gmail.com	
ECHO Skype:  chernobyljek�skype
ECHO ICQ:    697188772
@ECHO. 
pause
cls
goto Begin







