# Dockerfile (Single-stage build)
FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm install --only=production
CMD ["node", "server.js"]

