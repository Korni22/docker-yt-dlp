FROM python:alpine
USER root
RUN wget https://github.com/wez/atomicparsley/releases/latest/download/AtomicParsleyAlpine.zip && \
	unzip AtomicParsleyAlpine.zip && \
	mv AtomicParsley /usr/local/bin && \
	rm AtomicParsleyAlpine.zip
RUN ["apk", "add", "gcc", "libc-dev", "ffmpeg", "libstdc++"]
# USER yt-dlp
RUN ["python3", "-m", "pip", "install", "--upgrade", "yt-dlp"]
CMD ["/usr/local/bin/yt-dlp"]
