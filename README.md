# Hello

```
cd /mnt/c/github/chgeuer/elix_docker

docker build --tag chgeuerwesteurope.azurecr.io/app:0.0.4 .

docker tag chgeuerwesteurope.azurecr.io/app:0.0.5 chgeuerwesteurope.azurecr.io/app:latest


docker run -it --rm -p 8000:8000 --entrypoint /bin/sh chgeuerwesteurope.azurecr.io/app:0.0.4

/opt/app/_build/prod/rel/hello/bin/hello foreground
/opt/app/_build/prod/rel/hello/bin/hello start

```

docker run -it --rm -p 8000:8000 --entrypoint /bin/sh chgeuerwesteurope.azurecr.io/app:0.0.4
MIX_ENV=prod mix release --env=prod


PORT=8000 HOST=127.0.0.1 SECRET_KEY_BASE=jdlk _build/prod/rel/hello/bin/hello foreground
PORT=8000 HOST=127.0.0.1 SECRET_KEY_BASE=jdlk mix phx.server





docker run -it --rm -p 8000:8000 chgeuerwesteurope.azurecr.io/app:0.0.4


http://teamon.eu/2017/deploying-phoenix-to-production-using-docker/
https://davidanguita.name/articles/dockerizing-a-phoenix-project/
https://floriank.github.io/post/using-phoenix-with-docker-part-1-introduction/
https://blog.lelonek.me/how-to-run-phoenix-framework-application-inside-a-docker-container-b02817d860b4
https://semaphoreci.com/community/tutorials/dockerizing-elixir-and-phoenix-applications
http://blog.cloud66.com/deploying-your-phoenix-applications-in-production-using-docker/
