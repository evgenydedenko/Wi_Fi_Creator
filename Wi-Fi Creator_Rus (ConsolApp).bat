@ECHO OFF

ECHO WiFi Creator. Евгений Деденко. 2013

@ECHO. 

:Begin

SET actionx=0

ECHO  Выбирете действие: 
@ECHO.     
ECHO  1. Создать точку Wi-Fi.
ECHO  2. Запуск Wi-Fi.       
ECHO  3. Остановить Wi-Fi.         
ECHO  4. Состояние сети.   
ECHO  5. О Wi-Fi Creator.
@ECHO.

SET /P actionx= 
IF %actionx%==1 goto рёtionx1
IF %actionx%==2 goto рёtionx2
IF %actionx%==3 goto рёtionx3
IF %actionx%==4 goto рёtionx4
IF %actionx%==5 goto рёtionx5


@ECHO.
cls
goto Begin

:рёtionx1
@ECHO.
ECHO Введите имя SSID:
SET /P ssid_d=
ECHO Введите пароль SSID:
SET /P pas_d=
netsh wlan set hostednetwork mode=allow ssid=%ssid_d% key=%pas_d%
@ECHO.
pause
cls
goto Begin

:рёtionx2
@ECHO.
netsh wlan start hostednetwork
@ECHO.
pause
cls
goto Begin

:рёtionx3
@ECHO.
netsh wlan stop hostednetwork
@ECHO.
pause
cls
goto Begin

:рёtionx4
@ECHO.
netsh wlan show hostednetwork
netsh wlan show hostednetwork setting=security

@ECHO.
pause
cls
goto Begin

:рёtionx5
@ECHO.
ECHO Wi-Fi Creator - это небольшая утилита для создания и редактирования Wi-Fi точек.
ECHO Разработчик: Евгений Деденко.
ECHO E-mail: chernobyljeka@gmail.com	
ECHO Skype:  chernobyljekрskype
ECHO ICQ:    697188772
@ECHO. 
pause
cls
goto Begin







