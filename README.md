# Capture HIK image

## Build locally

* get Hikvision Device Network SDK for Linux64 (for example `EN-HCNetSDKV6.1.9.4_build20220412_linux64`) and put it into `EN-HCNetSDK` directory
* build Docker image with `docker build -t capturehikimage .`
* run it with `docker run -ti --rm -v ~/camera:/output capturehikimage HOST PORT USERNAME PASSWORD`
* image will be saved as `~/camera/cam.jpeg`

## Docker Hub

You can also use it from Docker Hub:

```bash
docker run -ti --rm -v ~/camera:/output jmarsik/capturehikimage HOST PORT USERNAME PASSWORD
```
