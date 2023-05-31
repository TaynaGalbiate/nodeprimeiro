# O comando FROM faz download da imagem do Node na versão 18
FROM node:18
#WORKDIR é o diretório onde o projeto será instalado dentro da imagem
WORKDIR /usr/src/app
# Estamos copiando todos os arquivos package json e colando no
#diretório de trabalho(WORKDIR) app,definido acima
COPY package*.json ./
#Copiando todos os arquivo e diretório para o diretório app
COPY . .
#Executando o comando npm install para instalar as dependências
#do projeto no diretório app
RUN npm install
#Instalando no sistema o módulo do nodemon
RUN npm i -g nodemon
#Espondo a porta de comunicação definida no projeto node
EXPOSE 5028
#Executar o comando de nodemon index.js quando o container subir
CMD ["node","index.js"]