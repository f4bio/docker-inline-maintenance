# docker-inline-maintenance

* powered by alpine
* `nano` as text editor
* `rsync` for copying things
* `bash` and `fish` shells

## how to

```bash
$ docker run --rm -it \
    -v some-volume:/workspace \
    -v /some/directory:/config/files \
    f4bio/docker-inline-maintenance:latest`

~> rsync -ar /config/files/* /workspace/
~> nano /workspace/file
...
```
