FROM node:20 as build

WORKDIR /app

COPY package*.json ./

RUN npm install -g pnpm && pnpm install

COPY . .

RUN pnpm run build

FROM nginx:alpine

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
