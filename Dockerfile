# Utilise une version compatible de Node.js
FROM node:20.19-alpine

# Répertoire principal de travail
WORKDIR /app

# Copie tous les fichiers du projet dans le conteneur
COPY . .

# Aller dans le dossier CLI de n8n
WORKDIR /app/packages/cli

# Installer les dépendances (pas besoin de --workspace ici)
RUN npm install --legacy-peer-deps

# Builder le projet (toujours dans ce dossier)
RUN npm run build

# Expose le port de n8n
EXPOSE 5678

# Démarrer n8n depuis le fichier buildé
CMD ["node", "./build/index.js"]
