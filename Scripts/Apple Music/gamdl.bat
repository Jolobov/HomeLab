@echo off
REM --- Устанавливаем кодировку для правильного отображения кириллицы
chcp 65001 > nul

REM --- Определяем основную папку для музыки в переменную для удобства
set "MUSIC_FOLDER=%USERPROFILE%\Music\Apple Music"

cls
echo =================================================================
echo  DOWNLOADING TRACKS IN STANDARD (AAC) QUALITY
echo =================================================================
echo.
echo Destination: %MUSIC_FOLDER%
echo.

REM --- Запускаем gamdl, передавая ему пути для музыки и временных файлов
python -m gamdl --config-path "%~dp0gamdl_config.json" --output-path "%MUSIC_FOLDER%" --temp-path "%MUSIC_FOLDER%\temp" %*

echo.
echo =================================================================
echo  ALL TASKS COMPLETE.
echo =================================================================
echo.
echo You can find your music in "%MUSIC_FOLDER%"
echo.
pause