# Utilizando a imagem base do Python
FROM python:3.13.0
# Criando o diretório /app e navegando até ele
WORKDIR /app
# Copiando o arquivo requirements.txt para dentro do diretório /app
COPY requirements.txt .
# Rodando o comando para instalar as dependências do projeto
RUN pip install -r requirements.txt 
# Copiando todos os arquivos para o diretório /app/
COPY . /app/
# Expondo a porta 5000 do container
EXPOSE 5000
# Comando de inicialização do container
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]