# 🚀 Guia Completo de Configuração - Google Ads API Java

## 📁 ESTRUTURA DE ARQUIVOS

```
/workspace/
├── ads.properties                    ← ARQUIVO PRINCIPAL (já criado)
├── google-ads-examples/             ← Exemplos da API
├── google-ads/                      ← Biblioteca principal
└── CONFIGURACAO_GUIDE.md           ← Este guia
```

## 🔧 CONFIGURAÇÃO PASSO A PASSO

### **1. Obter Credenciais OAuth2**

#### **1.1 Acesse o Google Cloud Console**
- Vá para: https://console.developers.google.com
- Crie um novo projeto ou selecione um existente
- Ative a Google Ads API

#### **1.2 Configure OAuth2**
- Vá para "APIs & Services" → "Credentials"
- Clique em "Create Credentials" → "OAuth 2.0 Client IDs"
- Escolha "Desktop application" ou "Web application"
- Para Web: Adicione `http://127.0.0.1` aos URIs autorizados

#### **1.3 Obter Refresh Token**
Execute o exemplo de autenticação:
```bash
./gradlew -q runExample --example='authentication.GenerateUserCredentials --oAuthClientFile /caminho/para/seu/client_secret.json'
```

### **2. Obter Developer Token**

#### **2.1 Acesse Google Ads**
- Vá para: https://ads.google.com
- Faça login com sua conta do Google Ads
- Vá para "Tools & Settings" → "API Center"
- Copie o Developer Token

### **3. Configurar ads.properties**

Edite o arquivo `/workspace/ads.properties` e substitua os valores:

```properties
# OAuth2 Credentials
api.googleads.clientId=SEU_CLIENT_ID_AQUI
api.googleads.clientSecret=SEU_CLIENT_SECRET_AQUI
api.googleads.refreshToken=SEU_REFRESH_TOKEN_AQUI

# Google Ads API
api.googleads.developerToken=SEU_DEVELOPER_TOKEN_AQUI
api.googleads.loginCustomerId=SEU_CUSTOMER_ID_AQUI
```

### **4. Testar a Configuração**

#### **4.1 Listar Contas Acessíveis**
```bash
./gradlew -q runExample --example='accountmanagement.ListAccessibleCustomers'
```

#### **4.2 Obter Campanhas**
```bash
./gradlew -q runExample --example='basicoperations.GetCampaigns --customerId 1234567890'
```

## 📝 EXEMPLOS PRINCIPAIS

### **Operações Básicas:**
- `GetCampaigns` - Listar campanhas
- `AddCampaigns` - Criar campanhas
- `UpdateCampaign` - Atualizar campanhas
- `RemoveCampaign` - Remover campanhas

### **Gerenciamento de Campanhas:**
- `AddCompleteCampaignsUsingBatchJob` - Criar campanhas completas
- `AddCampaignLabels` - Adicionar labels
- `CreateExperiment` - Criar experimentos

### **Relatórios:**
- `ParallelReportDownload` - Baixar relatórios em paralelo

## 🛠️ COMO EXECUTAR

### **Compilar o Projeto:**
```bash
./gradlew build -x test
```

### **Listar Todos os Exemplos:**
```bash
./gradlew -q listExamples
```

### **Executar um Exemplo:**
```bash
./gradlew -q runExample --example='NOME_DO_EXEMPLO --parametro valor'
```

### **Exemplo Prático:**
```bash
# Listar campanhas
./gradlew -q runExample --example='basicoperations.GetCampaigns --customerId 1234567890'

# Criar campanha
./gradlew -q runExample --example='basicoperations.AddCampaigns --customerId 1234567890'
```

## 🔍 ESTRUTURA DE CÓDIGO

### **Padrão Básico:**
```java
// 1. Configurar cliente
GoogleAdsClient googleAdsClient = GoogleAdsClient.newBuilder()
    .fromPropertiesFile()
    .build();

// 2. Criar serviço
GoogleAdsServiceClient googleAdsServiceClient = 
    googleAdsClient.getLatestVersion().createGoogleAdsServiceClient();

// 3. Fazer consulta
String query = "SELECT campaign.id, campaign.name FROM campaign";
SearchGoogleAdsStreamRequest request = SearchGoogleAdsStreamRequest.newBuilder()
    .setCustomerId(Long.toString(customerId))
    .setQuery(query)
    .build();

// 4. Executar e processar resultados
ServerStream<SearchGoogleAdsStreamResponse> stream = 
    googleAdsServiceClient.searchStreamCallable().call(request);
```

## ⚠️ IMPORTANTE

1. **Mantenha suas credenciais seguras** - Nunca compartilhe o arquivo `ads.properties`
2. **Use Java 17** - O projeto foi configurado para Java 17
3. **Teste primeiro** - Sempre teste com exemplos básicos antes de usar operações complexas
4. **Tratamento de erros** - Os exemplos incluem tratamento de erros, use-os como referência

## 📞 SUPORTE

- **Documentação oficial:** https://developers.google.com/google-ads/api/docs/client-libs/java
- **Fórum de suporte:** https://groups.google.com/forum/#!forum/adwords-api
- **Issues do GitHub:** https://github.com/googleads/google-ads-java/issues