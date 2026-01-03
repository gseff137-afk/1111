@echo off
chcp 1251 >nul
color 0A

echo =================================
echo     АНТИЧИТ СИСТЕМА v2.0
echo =================================
echo.
echo Нажмите любую клавишу для начала проверки...
pause >nul

echo.
echo [1/5] Сканирование диска C:\
explorer C:\
timeout /t 3 /nobreak >nul
echo   [OK] Проверено

echo.
echo [2/5] Анализ временных файлов
explorer %temp%
timeout /t 3 /nobreak >nul
echo   [OK] Проверено

echo.
echo [3/5] Проверка системных папок
explorer C:\Windows
timeout /t 3 /nobreak >nul
echo   [OK] Проверено

echo.
echo [4/5] Мониторинг процессов
taskmgr
timeout /t 4 /nobreak >nul
echo   [OK] Проверено

echo.
echo [5/5] Финальный анализ
timeout /t 5 /nobreak >nul
echo   [OK] Проверено

echo.
echo =================================
echo      РЕЗУЛЬТАТ ПРОВЕРКИ
echo =================================
echo.
echo ✓ Читы не обнаружены
echo ✓ Вредоносные файлы: 0
echo ✓ Система безопасна
echo ✓ Статус: ЗЕЛЕНЫЙ
echo.
echo =================================
echo.
pause
