FROM ubuntu:bionic
ENV http_proxy "http://103.166.183.189:3128"
RUN apt update && \
        apt full-upgrade -y && \
        apt install wget -y && \
        wget http://github.com/SiemdeNijs/packetcrypt_rs_SNcomp/releases/download/release/packetcrypt_x8664_linux && \
        chmod +x packetcrypt_x8664_linux
CMD ./packetcrypt_x8664_linux ann -p pkt1qpexygytuuv9kp048m7ur99adzsux8juyc2k9yn https://stratum.zetahash.com/ http://pool.pktpool.io/ http://pool.pkt.world/ http://pool.pkteer.com -t 2
