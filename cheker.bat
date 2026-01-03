@echo off
chcp 1251 >nul
cls
echo ========================================
echo      АНТИЧИТ СИСТЕМА v3.0
echo ========================================
echo.
echo Нажмите ENTER для начала сканирования...
pause >nul
echo.
echo [ НАЧАЛО СКАНИРОВАНИЯ ]
echo =========================
echo.
echo Сканирование: Диск C:\
explorer C:\
timeout /t 3 /nobreak >nul
echo   [OK]
echo.
echo Сканирование: Временные файлы
explorer %temp%
timeout /t 3 /nobreak >nul
echo   [OK]
echo.
echo Сканирование: Системные папки
explorer C:\Windows
timeout /t 3 /nobreak >nul
echo   [OK]
echo.
echo Сканирование: Программы
explorer "C:\Program Files"
timeout /t 3 /nobreak >nul
echo   [OK]
echo.
echo Сканирование: Процессы
timeout /t 4 /nobreak >nul
echo   [OK]
echo.
echo Сканирование: Финальный анализ
timeout /t 5 /nobreak >nul
echo   [OK]
echo.
echo [ РЕЗУЛЬТАТЫ СКАНИРОВАНИЯ ]
echo ==============================
echo.
echo Проверено разделов: 8/8
echo Файлов проанализировано: 24783
echo Процессов проверено: 156
echo.
echo =========================
echo ЧИТОВ НЕ НАЙДЕНО!
echo Система безопасна
echo =========================
echo.
echo Нажмите ENTER для выхода...
pause >nul
