#!/bin/bash

source /crosscompile.bash

# build cross toolchain
go-crosscompile-build ${GOLANG_TARGET_PLATFORM}

cd /go/src/app

_p=`echo ${GOLANG_TARGET_PLATFORM} | sed 's,/,-,g'`

: ${APPNAME:="app"}

go-${_p} get
go-${_p} build -o ${APPNAME}-${_p}
