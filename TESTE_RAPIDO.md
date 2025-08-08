# 🧪 Teste Rápido - Google Ads API

## ✅ Verificar se tudo está funcionando

### **1. Verificar Java**
```bash
java -version
```
**Resultado esperado:** `openjdk version "17.0.15"`

### **2. Verificar Gradle**
```bash
./gradlew --version
```
**Resultado esperado:** Informações do Gradle 7.6.4

### **3. Verificar Compilação**
```bash
./gradlew build -x test
```
**Resultado esperado:** `BUILD SUCCESSFUL`

### **4. Listar Exemplos**
```bash
./gradlew -q listExamples
```
**Resultado esperado:** Lista de 99 exemplos disponíveis

## 🔧 Configuração Mínima para Teste

### **1. Editar ads.properties**
Abra o arquivo `/workspace/ads.properties` e configure pelo menos:

```properties
# Mínimo necessário para teste
api.googleads.developerToken=SEU_DEVELOPER_TOKEN
api.googleads.clientId=SEU_CLIENT_ID
api.googleads.clientSecret=SEU_CLIENT_SECRET
api.googleads.refreshToken=SEU_REFRESH_TOKEN
```

### **2. Teste Básico**
```bash
# Teste de conexão
./gradlew -q runExample --example='accountmanagement.ListAccessibleCustomers'
```

## 🚨 Solução de Problemas

### **Erro: "Failed to load GoogleAdsClient configuration"**
- Verifique se o arquivo `ads.properties` existe em `/workspace/`
- Verifique se as credenciais estão corretas

### **Erro: "GoogleAdsException"**
- Verifique se o Developer Token está correto
- Verifique se o Customer ID está correto
- Verifique se as permissões OAuth estão corretas

### **Erro: "RateExceededError"**
- Aguarde alguns minutos e tente novamente
- Use o exemplo `HandleRateExceededError` para tratamento

## 📊 Exemplos de Teste por Categoria

### **Autenticação:**
```bash
./gradlew -q runExample --example='authentication.GenerateUserCredentials --oAuthClientFile client_secret.json'
```

### **Contas:**
```bash
./gradlew -q runExample --example='accountmanagement.ListAccessibleCustomers'
```

### **Campanhas:**
```bash
./gradlew -q runExample --example='basicoperations.GetCampaigns --customerId 1234567890'
```

### **Relatórios:**
```bash
./gradlew -q runExample --example='reporting.ParallelReportDownload --customerIds 1234567890,9876543210'
```

## 🎯 Próximos Passos

1. **Configure suas credenciais** no `ads.properties`
2. **Teste a conexão** com `ListAccessibleCustomers`
3. **Explore os exemplos** por categoria
4. **Adapte os códigos** para suas necessidades
5. **Implemente tratamento de erros** baseado nos exemplos

## 📞 Ajuda

Se encontrar problemas:
1. Verifique o arquivo `CONFIGURACAO_GUIDE.md`
2. Consulte a documentação oficial
3. Use os exemplos de tratamento de erro incluídos