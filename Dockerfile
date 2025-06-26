# Utilise une version Node.js compatible (et dispo)
FROM node:20.19-alpine

# Répertoire principal
WORKDIR /app

# Installe npm 9 pour corriger le bug avec les workspaces
RUN npm install -g npm@9

# Copie tous les fichiers du repo dans l'image
COPY . .

# Aller dans le CLI
WORKDIR /app/packages/cli

# Installer les dépendances
RUN npm install --legacy-peer-deps

# Builder le projet
RUN npm run build

# Port d'écoute
EXPOSE 5678

# Démarrage
CMD ["node", "./build/index.js"]
