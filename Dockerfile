FROM node:14
WORKDIR /BackEnd
COPY package*.json ./
RUN npm install
COPY BackEnd .

# Uygulamayı başlat
CMD ["node", "app.js"]