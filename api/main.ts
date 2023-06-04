import { Hono } from "hono/mod.ts";
import { serve } from "std/http/mod.ts";

const app = new Hono();

app.get("/", (ctx) => {
  return ctx.text("Hello, Google Cloud Run!!");
});

serve(app.fetch, { port: 8080 });
