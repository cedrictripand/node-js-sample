# Utiliser une image officielle de Node.js
FROM node:18-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier package.json et package-lock.json avant d’installer les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install --omit=dev

# Copier le reste des fichiers
COPY . .

# Exposer le port sur lequel l'application tourne
EXPOSE 8080

# Lancer l'application
CMD ["npm", "start"]
