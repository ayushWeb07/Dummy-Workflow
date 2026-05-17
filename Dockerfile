FROM node:24-alpine

WORKDIR /app

RUN corepack enable && corepack prepare pnpm@latest --activate

COPY package.json pnpm-lock.yaml /app/

RUN pnpm install

COPY . /app/

EXPOSE 3000

CMD ["node", "server.js"]