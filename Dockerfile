FROM denoland/deno

WORKDIR /app

ADD . /app

RUN deno cache api/main.ts

CMD ["task", "serve"]