FROM python:alpine
USER root
RUN wget https://github.com/wez/atomicparsley/releases/download/$ATOMIC_PARSLEY_RELEASE/AtomicParsleyAlpine.zip && \
	unzip AtomicParsleyAlpine.zip && \
	mv AtomicParsley /usr/local/bin && \
	rm AtomicParsleyAlpine.zip
RUN ["apk", "add", "gcc", "libc-dev", "ffmpeg"]
# USER yt-dlp
RUN ["python3", "-m", "pip", "install", "--upgrade", "yt-dlp"]
CMD ["/usr/local/bin/yt-dlp"]
