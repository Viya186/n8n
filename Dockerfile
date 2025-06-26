# Utilise Node.js 20.20, compatible avec n8n
FROM node:20.20-alpine

# Répertoire de travail dans le container
WORKDIR /app

# Copie tous les fichiers du projet dans le container
COPY . .

# Installe les dépendances
RUN npm install

# Expose le port (important pour Render)
EXPOSE 5678

# Démarre n8n
CMD ["npx", "n8n"]
