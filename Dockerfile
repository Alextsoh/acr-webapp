FROM node:20-alpine
WORKDIR /app

# copy manifests first
COPY package*.json ./

# you don't have package-lock.json, so use install (not ci)
RUN npm install --omit=dev

# copy the rest
COPY . .

#ENV PORT=8080
EXPOSE 8080
CMD ["npm","start"]
