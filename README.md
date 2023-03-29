# docker-inline-maintenance

* powered by alpine
* `nano`, `neovim`* as text editor
* `rsync` for copying things
* `bash`, `zsh`* shells
* multi-architecture support

## how to use

```bash
docker run --rm -it \
    -v some-volume:/workspace \
    -v /some/directory:/workspace/directory \
    f4bio/docker-inline-maintenance:latest
```

```zsh
~> rsync -ar /workspace/config/files/* /workspace/
~> nano /workspace/file
...
```

## how to build

```bash
PLATFORM_IDENTIFIER=linux/amd64 # linux/arm64 # linux/arm/v7
VERSION_NUMBER=0.0.4

docker buildx build \
    --platform $PLATFORM_IDENTIFIER \
    --tag f4bio/docker-inline-maintenance:latest \
    --tag f4bio/docker-inline-maintenance:${VERSION_NUMBER} \
    --push .
```
