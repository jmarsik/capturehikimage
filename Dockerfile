FROM golang:1.16.6

COPY . /app
RUN mv /app/EN-HCNetSDK /hiksdk
WORKDIR /app

ENV LD_LIBRARY_PATH "/hiksdk/lib"
ENV CGO_CXXFLAGS "-I/hiksdk/incEn/"
ENV CGO_LDFLAGS "-L/hiksdk/lib -lhcnetsdk"

RUN go build

VOLUME /output

ENTRYPOINT ["/app/run.sh"]
