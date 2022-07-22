## Capture HIK image

How to build:

* get Hikvision Device Network SDK for Linux64 (for example `EN-HCNetSDKV6.1.9.4_build20220412_linux64`) and put it into `EN-HCNetSDK` directory
* build Docker image with `docker build -t capturehikimage .`
* run it with `docker run -ti --rm -v ~/camera:/output capturehikimage HOST PORT USERNAME PASSWORD`
* image will be saved as `~/camera/cam.jpeg`
