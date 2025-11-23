FROM --platform=linux/amd64 alpine

RUN apk --no-cache add curl

FROM nginx

COPY ./index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
