# 1. Usar imagem oficial atualizada do PostgreSQL
FROM postgres:latest

# 2. Variáveis de ambiente do Postgres
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=meubanco

# 3. Copia scripts SQL para a pasta que o PostgreSQL executa automaticamente
# Obs: esta pasta é uma convenção da imagem oficial
COPY ./script.sql /docker-entrypoint-initdb.d/

# 4. Permissões (garante leitura)
RUN chmod 755 /docker-entrypoint-initdb.d/script.sql
