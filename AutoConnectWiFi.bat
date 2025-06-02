@echo off
setlocal

REM 打开无线网卡（开启 Wi-Fi）
netsh interface set interface name="Wi-Fi" admin=ENABLED

REM 添加配置文件（可重复执行）
netsh wlan add profile filename="D:\WiFiProfiles\WLAN-HONOR 90 GT.xml"

echo 等待热点“HONOR 90 GT”出现...

set hotspot=HONOR 90 GT
set max_wait_seconds=180
set interval=10
set elapsed=0

:loop
REM 扫描可用热点
netsh wlan show networks | findstr /C:"%hotspot%" >nul
if %errorlevel%==0 (
    echo 找到热点，正在连接...
    netsh wlan connect name="%hotspot%"
    goto end
)

REM 未找到，等待
echo 未检测到热点，%interval%秒后重试...
timeout /t %interval% /nobreak >nul
set /a elapsed+=%interval%

if %elapsed% GEQ %max_wait_seconds% (
    echo 超过%max_wait_seconds%秒，未找到热点，放弃尝试。
    goto end
)

goto loop

:end
exit
