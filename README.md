# Hello

```
cd /mnt/c/github/chgeuer/elix_docker

docker build --tag chgeuerwesteurope.azurecr.io/app:0.0.4 .

docker run -it --rm -p 8000:8000 --entrypoint /bin/sh chgeuerwesteurope.azurecr.io/app:0.0.4

/opt/app/_build/prod/rel/hello/bin/hello foreground
/opt/app/_build/prod/rel/hello/bin/hello start

```

docker run -it --rm -p 8000:8000 --entrypoint /bin/sh chgeuerwesteurope.azurecr.io/app:0.0.4
MIX_ENV=prod mix release --env=prod


PORT=8000 HOST=127.0.0.1 SECRET_KEY_BASE=jdlk _build/prod/rel/hello/bin/hello foreground
PORT=8000 HOST=127.0.0.1 SECRET_KEY_BASE=jdlk mix phx.server





docker run -it --rm -p 8000:8000 chgeuerwesteurope.azurecr.io/app:0.0.4
