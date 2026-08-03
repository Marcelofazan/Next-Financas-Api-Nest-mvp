CREATE DATABASE financas;

-- Conecte-se ao banco 'financas' antes de rodar os comandos abaixo

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    "createdAt" TIMESTAMP NOT NULL DEFAULT now(),
    "updatedAt" TIMESTAMP NOT NULL DEFAULT now()
);

CREATE TABLE categories (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    "userId" UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    "createdAt" TIMESTAMP NOT NULL DEFAULT now(),
    "updatedAt" TIMESTAMP NOT NULL DEFAULT now()
);

CREATE INDEX idx_categories_user ON categories("userId");

CREATE TYPE transaction_type AS ENUM ('income', 'expense');

CREATE TABLE transactions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    description VARCHAR(255) NOT NULL,
    amount NUMERIC(12, 2) NOT NULL,
    type transaction_type NOT NULL,
    date DATE NOT NULL,
    notes VARCHAR(500),
    "userId" UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    "categoryId" UUID REFERENCES categories(id) ON DELETE SET NULL,
    "createdAt" TIMESTAMP NOT NULL DEFAULT now(),
    "updatedAt" TIMESTAMP NOT NULL DEFAULT now()
);

CREATE INDEX idx_transactions_user ON transactions("userId");
CREATE INDEX idx_transactions_date ON transactions(date);

CREATE TABLE goals (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(255) NOT NULL,
    "targetAmount" NUMERIC(12, 2) NOT NULL,
    "currentAmount" NUMERIC(12, 2) NOT NULL DEFAULT 0,
    deadline DATE,
    "userId" UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    "createdAt" TIMESTAMP NOT NULL DEFAULT now(),
    "updatedAt" TIMESTAMP NOT NULL DEFAULT now()
);

CREATE INDEX idx_goals_user ON goals("userId");
