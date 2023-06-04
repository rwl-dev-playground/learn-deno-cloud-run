FROM denoland/deno

WORKDIR /app

ADD . /app

RUN deno cache api/main.ts

CMD ["run", "--allow-net", "api/main.ts"]