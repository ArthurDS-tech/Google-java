# 🪟 Configuração Google Ads API - Windows

## **🔧 SOLUÇÃO RÁPIDA PARA WINDOWS**

### **Problema:**
O sistema está procurando o arquivo `ads.properties` em `C:\Users\arthur.schuster\ads.properties` mas ele está na pasta do projeto.

### **Solução:**

#### **Opção 1: Usar o script automático (Recomendado)**
```cmd
# Execute o script de configuração
setup-windows.bat
```

#### **Opção 2: Copiar manualmente**
```cmd
# Copiar o arquivo para o diretório do usuário
copy ads.properties "%USERPROFILE%\ads.properties"
```

#### **Opção 3: Configurar caminho específico**
Edite o arquivo `ads.properties` e adicione no início:
```properties
# Caminho específico para Windows
# Copie este arquivo para: C:\Users\arthur.schuster\ads.properties
```

## **📋 PASSOS COMPLETOS**

### **1. Configurar o arquivo de credenciais**
Edite o arquivo `ads.properties` e substitua os valores:

```properties
# OAuth2 Credentials
api.googleads.clientId=SEU_CLIENT_ID_AQUI
api.googleads.clientSecret=SEU_CLIENT_SECRET_AQUI
api.googleads.refreshToken=SEU_REFRESH_TOKEN_AQUI

# Google Ads API
api.googleads.developerToken=SEU_DEVELOPER_TOKEN_AQUI
api.googleads.loginCustomerId=SEU_CUSTOMER_ID_AQUI
```

### **2. Copiar para o local correto**
```cmd
copy ads.properties "%USERPROFILE%\ads.properties"
```

### **3. Testar a configuração**
```cmd
# Listar exemplos
./gradlew -q listExamples

# Testar conexão
./gradlew -q runExample --example="accountmanagement.ListAccessibleCustomers"

# Executar exemplo
./gradlew -q runExample --example="basicoperations.GetCampaigns --customerId 1234567890"
```

## **🎯 COMANDOS PRONTOS PARA USAR**

### **Compilar o projeto:**
```cmd
./gradlew build -x test
```

### **Listar exemplos:**
```cmd
./gradlew -q listExamples
```

### **Executar exemplos:**
```cmd
# Teste de conexão
./gradlew -q runExample --example="accountmanagement.ListAccessibleCustomers"

# Listar campanhas
./gradlew -q runExample --example="basicoperations.GetCampaigns --customerId 1234567890"

# Criar campanha
./gradlew -q runExample --example="basicoperations.AddCampaigns --customerId 1234567890"
```

## **⚠️ IMPORTANTE**

1. **Sempre copie o arquivo** `ads.properties` para `%USERPROFILE%\ads.properties`
2. **Configure suas credenciais reais** no arquivo
3. **Use aspas duplas** nos comandos do Windows
4. **Teste sempre primeiro** com `ListAccessibleCustomers`

## **🚨 SOLUÇÃO DE PROBLEMAS**

### **Erro: "FileNotFoundException"**
- Execute: `copy ads.properties "%USERPROFILE%\ads.properties"`

### **Erro: "Gradle daemon disappeared"**
- Use: `./gradlew --stop` e depois tente novamente

### **Erro: "Invalid credentials"**
- Verifique se as credenciais estão corretas no `ads.properties`

## **📞 AJUDA**

Se ainda tiver problemas:
1. Execute o script `setup-windows.bat`
2. Verifique se o arquivo existe em `%USERPROFILE%\ads.properties`
3. Configure suas credenciais reais
4. Teste com `ListAccessibleCustomers`