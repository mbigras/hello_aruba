# Hello Aruba

> Build an image to use Aruba

## Feature tests

```
bin/build
bin/cucumber
```

## Explore broken `$LOAD_PATH` technique

Depends on [Docker](https://www.docker.com/community-edition)

```
git clone https://github.com/mbigras/hello_aruba
cd hello_aruba
git checkout d5de011
docker build --tag hello_aruba .
bin/cucumber
```

## Links

* https://github.com/cucumber/aruba