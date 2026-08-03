## Next-Financas-Api-Nest-mvp
Exemplo de projeto de Finanças em Arquitetura modular em Next 13 e Node.js com autenticação Jwt e banco de dados Postgres.

#### 🎨 Aqui está uma demonstração do projeto
https://next-financas-api-nest-ui.onrender.com/login

- Login: **admin@admin.com.br**
- Senha: **admin123**

#### 📋 O que voçê vai ver nesse Projeto

| Tecnologia | Descrição |
|-----------|-----------|
| **BCrypt**  | Algoritmo de hashing criptográfico utilizado para armazenar senhas de forma segura. |
| **Fastify**  | Framework web para Node.js focado em alta performance e baixo consumo de recursos. |
| **LocalStorage** | Armazenamento em cache de dados no navegador de forma persistente em pares de chave e valor. |
| **JWT** | É um crachá digital usado para identificar usuários e trocar informações de forma segura entre computadores. |

#### 💬 Requisitos do Projeto
- Necessário **Docker** instalado.

Modifique alterando [SUA_SENHA] e [SUA_URL_CONEXAO] no arquivo **.env** .
```bash
PORT=3001
NODE_ENV=development
DATABASE_URL=[SUA_URL_CONEXAO]

DB_HOST=localhost
DB_PORT=5432
DB_USER=postgres
DB_PASS=[SUA_SENHA]
DB_NAME=financas-db

JWT_SECRET=ChaveGarantidaComMaisDeSessentaEQuatroCaracteresParaPreencherOs512BitsNecessariosDoAlgoritmo!!!
```

#### 🔄 Executar a aplicação

#### 📁 Backend

```bash
cd backend
npm install
npm run start:dev
```

A aplicação ira iniciar em **http://localhost:3001/swagger**

#### 📁 Frontend 

```bash
cd frontend
npm install
npm run dev
```

A aplicação ira iniciar em **http://localhost:5173**

#### 🔍 Executar Testes Unitários
```bash
cd backend
npx jest --config ./test/jest-e2e.json
```
