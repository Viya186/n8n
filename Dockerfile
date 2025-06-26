FROM node:20.19-alpine

# ✅ Fix npm bug avec workspaces en repassant à npm 9
RUN npm install -g npm@9

WORKDIR /app
COPY . .

WORKDIR /app/packages/cli

RUN npm install --legacy-peer-deps
RUN npm run build

EXPOSE 5678

CMD ["node", "./build/index.js"]
