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
~> rsync -ar /config/files/* /workspace/
~> nano /workspace/file
...
```

## how to build

### amd64

```bash
docker buildx build \
    --platform linux/amd64 \
    --tag f4bio/docker-inline-maintenance:latest \
    --push .
```

### arm64

```bash
docker buildx build \
    --platform linux/arm64 \
    --tag f4bio/docker-inline-maintenance:latest \
    --push .
```
