REM Remove files older than 14 days
forfiles /p "%USERPROFILE%\Downloads" /s /m *.* /c "cmd /c Del @path" /d -14
cmd /c exit 0 REM forfiles exits non-zero if there are no matches