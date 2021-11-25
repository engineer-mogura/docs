@echo off
cd /d %~dp0

REM 再帰的にmdファイルを走査し、pdfファイルへ変換する
for /r %%A in (*.md) do (
    echo %%A
    pandoc -f markdown -t pdf "%%A" -s -o "%%~dpnA.pdf"
)

exit /b