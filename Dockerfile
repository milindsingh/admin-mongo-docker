FROM node:6
LABEL maintainer="Milind Singh <milind7@live.com>"

# Install pm2
RUN npm install pm2 -g

# Expose ports
EXPOSE 80 443 43554

# Start pm2.json process file
CMD ["pm2-runtime", "start", "pm2.json"]
