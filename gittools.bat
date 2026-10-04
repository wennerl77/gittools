@echo off
setlocal

:: Define o caminho padrao do bash do Git for Windows
set "BASH_PATH=C:\Program Files\Git\bin\bash.exe"

:: Verifica se o bash.exe existe no caminho padrao
if not exist "%BASH_PATH%" (
    :: Fallback: tenta procurar no PATH do sistema
    for %%i in (bash.exe) do set "BASH_PATH=%%~$PATH:i"
)

if not defined BASH_PATH (
    echo [ERROR] bash.exe nao encontrado.
    echo Por favor, instale o Git for Windows ^(https://gitforwindows.org/^) 
    echo ou adicione o bash.exe ao seu PATH.
    exit /b 1
)

:: Executa o script passando os argumentos originais
"%BASH_PATH%" "%~dp0gittools" %*
