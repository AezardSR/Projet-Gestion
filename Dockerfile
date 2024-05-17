# Utilise une image de base officielle de Node.js
FROM node:14-alpine

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances de l'application
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port sur lequel le serveur de développement va fonctionner
EXPOSE 3000

# Démarrer le serveur de développement de React
CMD ["npm", "start"]
