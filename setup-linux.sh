#!/bin/bash

echo "Configurando Google Ads API para Linux/Mac..."

# Copiar ads.properties para o diretório do usuário
cp ads.properties ~/ads.properties

# Verificar se o arquivo foi copiado
if [ -f ~/ads.properties ]; then
    echo "✅ ads.properties copiado para ~/ads.properties"
else
    echo "❌ Erro ao copiar ads.properties"
    exit 1
fi

echo ""
echo "========================================"
echo "CONFIGURAÇÃO COMPLETA!"
echo "========================================"
echo ""
echo "Agora você pode executar:"
echo ""
echo "1. Listar exemplos:"
echo "   ./gradlew -q listExamples"
echo ""
echo "2. Executar exemplo:"
echo "   ./gradlew -q runExample --example='basicoperations.GetCampaigns --customerId 1234567890'"
echo ""
echo "3. Testar conexão:"
echo "   ./gradlew -q runExample --example='accountmanagement.ListAccessibleCustomers'"
echo ""
echo "========================================"
echo ""
echo "IMPORTANTE: Configure suas credenciais no arquivo:"
echo "~/ads.properties"
echo ""