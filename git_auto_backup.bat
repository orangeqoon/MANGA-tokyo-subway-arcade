@echo off
chcp 65001 >nul
echo =========================================
echo 東京地下鉄ゲーセン - 自動セーブスクリプト
echo =========================================

cd /d "%~dp0"
git add .
git commit -m "Auto Backup: %date% %time%"

echo.
echo [OK] ローカルのGit履歴に保存しました！
echo ※GitHub等へアップロード(Push)したい場合は、初回のみリモート設定が必要です。
echo =========================================
pause
