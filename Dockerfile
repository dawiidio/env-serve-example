FROM node:12
ENV PRIMARY_COLOR ''
ENV CLIENT_NAME ''
COPY . /app/
WORKDIR /app
RUN npm install
RUN npm run build
RUN npm install -g env-serve
EXPOSE 3000
WORKDIR /app/src
CMD ["env-serve"]