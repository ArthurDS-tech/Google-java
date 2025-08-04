@echo off
echo ========================================
echo CORRIGINDO CONFIGURAÇÃO WINDOWS
echo ========================================
echo.

REM Verificar se o arquivo ads.properties existe na pasta atual
if not exist "ads.properties" (
    echo ❌ ERRO: ads.properties não encontrado na pasta atual
    echo Certifique-se de estar na pasta correta do projeto
    pause
    exit /b 1
)

echo ✅ ads.properties encontrado na pasta atual

REM Copiar para o diretório do usuário
echo Copiando ads.properties para %USERPROFILE%...
copy ads.properties "%USERPROFILE%\ads.properties"

REM Verificar se a cópia foi bem-sucedida
if exist "%USERPROFILE%\ads.properties" (
    echo ✅ ads.properties copiado com sucesso para:
    echo    %USERPROFILE%\ads.properties
    echo.
    echo ========================================
    echo CONFIGURAÇÃO CONCLUÍDA!
    echo ========================================
    echo.
    echo Agora você pode executar:
    echo.
    echo 1. Testar conexão:
    echo    ./gradlew -q runExample --example="accountmanagement.ListAccessibleCustomers"
    echo.
    echo 2. Listar campanhas:
    echo    ./gradlew -q runExample --example="basicoperations.GetCampaigns --customerId 2431689362"
    echo.
    echo 3. Obter relatórios:
    echo    ./gradlew -q runExample --example="reporting.ParallelReportDownload --customerIds 2431689362"
    echo.
    echo ========================================
    echo.
    echo IMPORTANTE: Configure suas credenciais reais no arquivo:
    echo %USERPROFILE%\ads.properties
    echo.
) else (
    echo ❌ ERRO: Falha ao copiar ads.properties
    echo Verifique as permissões da pasta %USERPROFILE%
    pause
    exit /b 1
)

echo.
echo Pressione qualquer tecla para continuar...
pause > nul