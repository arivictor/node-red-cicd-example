FROM nodered/node-red

ENV NODE_RED_ENABLE_PROJECTS=false
ENV NODE_RED_ENABLE_SAFE_MODE=false
ENV FLOWS=flows.json

COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

# COPY settings.js /data/settings.js
COPY flows_cred.json /data/flows_cred.json
COPY flows.json /data/flows.json

CMD ["npm", "start"]
