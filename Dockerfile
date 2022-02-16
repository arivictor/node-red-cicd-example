FROM nodered/node-red

ENV NODE_RED_ENABLE_PROJECTS=false
ENV NODE_RED_ENABLE_SAFE_MODE=false
ENV FLOWS=flow.json

COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

# COPY settings.js /data/settings.js
COPY flow_cred.json /data/flow_cred.json
COPY flow.json /data/flow.json

CMD ["npm", "start"]
