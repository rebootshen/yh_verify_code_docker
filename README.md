# yh_verify_code_docker
用于搭建识别银河验证码的http服务，基于 flask 和 tesseract


docker build -t verify_code:latest .
docker images
docker run -t -i verify_code bash

docker run -d -p 5000:5000 verify_code:latest
docker ps
docker logs container_id -f



$ docker exec -it e3a2eda7fb07 bash
root@e3a2eda7fb07:/# tesseract --version
tesseract 4.1.1
 leptonica-1.82.0
  libgif 5.1.9 : libjpeg 8d (libjpeg-turbo 2.1.1) : libpng 1.6.37 : libtiff 4.3.0 : zlib 1.2.11 : libweb
p 1.2.2 : libopenjp2 2.4.0
 Found AVX2
 Found AVX
 Found FMA
 Found SSE
 Found libarchive 3.6.0 zlib/1.2.11 liblzma/5.2.5 bz2lib/1.0.8 liblz4/1.9.3 libzstd/1.4.8
root@e3a2eda7fb07:/#
