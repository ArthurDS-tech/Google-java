# 🚨 SOLUÇÃO IMEDIATA PARA WINDOWS

## **❌ PROBLEMA IDENTIFICADO:**
O arquivo `ads.properties` não está sendo encontrado em `C:\Users\arthur.schuster\ads.properties`

## **✅ SOLUÇÃO RÁPIDA:**

### **Opção 1: Usar o script automático**
```cmd
fix-windows.bat
```

### **Opção 2: Comando manual**
```cmd
copy ads.properties "%USERPROFILE%\ads.properties"
```

### **Opção 3: Verificar se funcionou**
```cmd
dir "%USERPROFILE%\ads.properties"
```

## **🔧 PASSOS COMPLETOS:**

### **1. Execute o script de correção:**
```cmd
fix-windows.bat
```

### **2. Configure suas credenciais reais:**
Edite o arquivo `C:\Users\arthur.schuster\ads.properties` e substitua:

```properties
# OAuth2 Credentials (obtenha em https://console.developers.google.com)
api.googleads.clientId=SEU_CLIENT_ID_REAL
api.googleads.clientSecret=SEU_CLIENT_SECRET_REAL
api.googleads.refreshToken=SEU_REFRESH_TOKEN_REAL

# Google Ads API (obtenha em https://ads.google.com → Tools & Settings → API Center)
api.googleads.developerToken=SEU_DEVELOPER_TOKEN_REAL
api.googleads.loginCustomerId=SEU_CUSTOMER_ID_REAL
```

### **3. Teste a conexão:**
```cmd
./gradlew -q runExample --example="accountmanagement.ListAccessibleCustomers"
```

### **4. Obtenha dados reais:**
```cmd
# Listar campanhas
./gradlew -q runExample --example="basicoperations.GetCampaigns --customerId 2431689362"

# Obter relatórios
./gradlew -q runExample --example="reporting.ParallelReportDownload --customerIds 2431689362"

# Obter métricas
./gradlew -q runExample --example="basicoperations.SearchForGoogleAdsFields --namePrefix metrics"
```

## **🎯 RESULTADO ESPERADO:**

Após executar `fix-windows.bat`, você deve ver:
```
✅ ads.properties copiado com sucesso para:
   C:\Users\arthur.schuster\ads.properties
```

## **⚠️ IMPORTANTE:**

1. **Execute o script** `fix-windows.bat` primeiro
2. **Configure suas credenciais reais** no arquivo copiado
3. **Teste sempre** com `ListAccessibleCustomers`
4. **Use aspas duplas** nos comandos do Windows

## **🚨 SE AINDA NÃO FUNCIONAR:**

1. Verifique se está na pasta correta do projeto
2. Execute: `dir ads.properties` para verificar se o arquivo existe
3. Execute: `fix-windows.bat` novamente
4. Verifique as permissões da pasta do usuário