FROM node:22-alpine

ENV PORT=80

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy build output files
COPY node_modules node_modules
COPY package.json package.json
COPY public public
COPY .next .next
COPY next.config.ts next.config.ts

EXPOSE $PORT

# Running the app
ENTRYPOINT [ "npm", "start" ]