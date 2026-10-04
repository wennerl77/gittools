# Define o caminho padrão do bash do Git for Windows
$BashPath = "C:\Program Files\Git\bin\bash.exe"

# Verifica se o bash.exe existe no caminho padrão, senão tenta achar no PATH
if (-Not (Test-Path $BashPath)) {
    $BashPath = (Get-Command bash.exe -ErrorAction SilentlyContinue).Source
}

if (-Not $BashPath) {
    Write-Host "[ERROR] bash.exe não encontrado." -ForegroundColor Red
    Write-Host "Por favor, instale o Git for Windows (https://gitforwindows.org/)"
    Write-Host "ou adicione o bash.exe ao seu PATH."
    exit 1
}

# Obtém o diretório do script atual
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$GitToolsScript = Join-Path $ScriptDir "gittools"

# Executa o script passando os argumentos originais
& $BashPath $GitToolsScript $args
