@echo off
echo Configurando Google Ads API para Windows...

REM Copiar ads.properties para o diretório do usuário
copy ads.properties "%USERPROFILE%\ads.properties"

REM Verificar se o arquivo foi copiado
if exist "%USERPROFILE%\ads.properties" (
    echo ✅ ads.properties copiado para %USERPROFILE%\ads.properties
) else (
    echo ❌ Erro ao copiar ads.properties
    pause
    exit /b 1
)

echo.
echo ========================================
echo CONFIGURAÇÃO COMPLETA!
echo ========================================
echo.
echo Agora você pode executar:
echo.
echo 1. Listar exemplos:
echo    ./gradlew -q listExamples
echo.
echo 2. Executar exemplo:
echo    ./gradlew -q runExample --example="basicoperations.GetCampaigns --customerId 1234567890"
echo.
echo 3. Testar conexão:
echo    ./gradlew -q runExample --example="accountmanagement.ListAccessibleCustomers"
echo.
echo ========================================
echo.
echo IMPORTANTE: Configure suas credenciais no arquivo:
echo %USERPROFILE%\ads.properties
echo.
pause