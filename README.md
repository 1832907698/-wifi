# AutoConnectWiFi.bat

🛰️ 自动连接 Wi-Fi 热点脚本（Windows）

该脚本用于在开机后自动连接到名为 `HONOR 90 GT` 的热点，并支持热点延迟开启的情况。

---

## 🚀 功能亮点

- ✅ 自动启用无线网卡（Wi-Fi）
- 🔄 检测指定热点是否出现，最多等待 3 分钟
- 📡 一旦检测到热点，即刻连接
- 📁 Wi-Fi 配置文件存储在 `D:\WiFiProfiles\WLAN-HONOR 90 GT.xml`

---

## 📂 使用方法

1. 打开命令提示符导出 Wi-Fi 配置：
   ```bash
   netsh wlan export profile name="HONOR 90 GT" folder="D:\WiFiProfiles" key=clear
