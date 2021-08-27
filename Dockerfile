FROM python:alpine
USER root
RUN ["apk", "add", "gcc", "libc-dev", "ffmpeg"]
# USER yt-dlp
RUN ["python3", "-m", "pip", "install", "--upgrade", "yt-dlp"]
ENTRYPOINT ["/usr/local/bin/yt-dlp"]
