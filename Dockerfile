# Utilise une version compatible de Node.js
FROM node:20.20-alpine

# Répertoire principal de travail
WORKDIR /app

# Copie tous les fichiers du projet dans le conteneur
COPY . .

# Aller dans le dossier CLI de n8n
WORKDIR /app/packages/cli

# Installer les dépendances pour tout le monorepo, depuis la racine
RUN npm install --legacy-peer-deps --workspace=cli

# Builder n8n (obligatoire pour que ./build/index.js existe)
RUN npm run build --workspace=cli

# Expose le port par défaut de n8n
EXPOSE 5678

# Démarrer n8n depuis le fichier buildé
CMD ["node", "./build/index.js"]
