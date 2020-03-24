FROM node:lts-alpine3.9
LABEL maintainer="Milind Singh <milind7@live.com>"

# Install pm2
RUN npm install pm2 -g

# Install git
RUN apk add --no-cache git

RUN mkdir -p /app/admin-mongo

WORKDIR "/app/admin-mongo"

# Pull and setup admin-mongo app
RUN git clone https://github.com/mrvautin/adminMongo.git .

RUN npm install

# Expose ports
EXPOSE 80 443 43554 1234

# Start pm2.json process file
CMD ["pm2", "start", "/app/admin-mongo/app.js"]
