# docker-go-cross

Simple build container for cross-compiling Go binaries, available on the [hub](https://hub.docker.com/r/jasperla/docker-go-cross/).

## Howto

    docker run -ti --rm -e APPNAME=myapp -e GOLANG_TARGET_PLATFORM="openbsd/amd64" -v "$PWD:/go/src/app" jasperla/go-cross

This will produce a myapp-openbsd-amd64 binary in `$PWD`.
`GOLANG_TARGET_PLATFORM` can be set to any platform supported by Go.

