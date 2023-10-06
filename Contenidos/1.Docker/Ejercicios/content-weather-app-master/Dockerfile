FROM node AS Build
RUN mkdir -p /var/node/
ADD src/ /var/node/
WORKDIR /var/node
RUN npm install

FROM node:alpine
ARG VERSION=V1.1
LABEL org.label-schema.version=$version
ENV NODE_ENV="production"
COPY --from=build /var/node/ /var/node
WORKDIR /var/nod
EXPOSE 3000
ENTRYPOINT ["./bin/www"]