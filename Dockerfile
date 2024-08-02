FROM asdlokj1qpi23/subconverter
WORKDIR /base
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del --no-cache tzdata && \
    rm -f pref.example.*
COPY pref.* .
