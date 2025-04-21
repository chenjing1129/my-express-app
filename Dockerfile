FROM node:20

WORKDIR /app

COPY package*.json ./
RUN npm install --production  # 仅安装生产依赖

COPY . .

EXPOSE 3000

CMD ["node", "index.js"] 