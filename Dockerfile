FROM nodered/node-red

ENV FLOWS=flow.js

# copy node-red project files into place
COPY flows.json /data/flows.json
COPY flows_cred.json /data/flows_cred.json
COPY settings.js /data/settings.js

# copy package.json to the WORKDIR so npm builds for node-red
COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-audit --only=production

CMD ["npm", "start"]
