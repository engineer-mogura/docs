@echo off
cd /d %~dp0

REM 再帰的にmdファイルを走査し、htmlファイルへ変換する
for /r %%A in (*.md) do (
    echo %%A
    pandoc -f markdown -t html "%%A" -s -o "%%~dpnA.html"
)

exit /b