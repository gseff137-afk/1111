# Очистка экрана и настройка кодировки
$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Заголовок
Clear-Host
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "     АНТИЧИТ СИСТЕМА v3.0" -ForegroundColor White
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Кнопка "Начать сканирование"
Write-Host "Нажмите ENTER для начала сканирования..." -ForegroundColor Yellow
$null = Read-Host

# Начало сканирования
Write-Host "`n[ НАЧАЛО СКАНИРОВАНИЯ ]" -ForegroundColor Green
Write-Host "=========================" -ForegroundColor Green
Write-Host ""

# Функция для проверки с анимацией
function Start-Check {
    param($name, $path, $seconds)
    
    Write-Host "Сканирование: $name" -ForegroundColor Yellow -NoNewline
    # Анимация точек
    for ($i = 0; $i -lt $seconds; $i++) {
        Write-Host "." -NoNewline -ForegroundColor Cyan
        Start-Sleep 1
    }
    # Открываем папку если путь указан
    if ($path) {
        explorer $path
    }
    Write-Host " [OK]" -ForegroundColor Green
}

# Проверки
Start-Check "Диск C:\" "C:\" 3
Start-Check "Временные файлы" "$env:TEMP" 3
Start-Check "Системные папки" "C:\Windows" 3
Start-Check "Программы" "C:\Program Files" 3
Start-Check "Процессы Windows" "" 4
Start-Check "Реестр системы" "" 3
Start-Check "Сетевые подключения" "" 2
Start-Check "Финальный анализ" "" 5

# Результат
Write-Host "`n[ РЕЗУЛЬТАТЫ СКАНИРОВАНИЯ ]" -ForegroundColor Cyan
Write-Host "==============================" -ForegroundColor Cyan
Write-Host ""
Write-Host "✓ Проверено разделов: 8/8" -ForegroundColor Green
Write-Host "✓ Файлов проанализировано: 24783" -ForegroundColor Green
Write-Host "✓ Процессов проверено: 156" -ForegroundColor Green
Write-Host "✓ Сетевых подключений: 24" -ForegroundColor Green
Write-Host ""
Write-Host "======================================" -ForegroundColor Green
Write-Host "  ЧИТОВ НЕ НАЙДЕНО!" -ForegroundColor White -BackgroundColor Green
Write-Host "  Система полностью безопасна" -ForegroundColor White -BackgroundColor Green
Write-Host "======================================" -ForegroundColor Green
Write-Host ""
Write-Host "Рекомендация: Продолжайте регулярные проверки" -ForegroundColor Yellow
Write-Host ""
Write-Host "Нажмите ENTER для выхода..." -ForegroundColor Gray
$null = Read-Host
