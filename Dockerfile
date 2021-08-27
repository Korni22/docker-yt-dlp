FROM python:alpine
USER root
RUN ["apk", "add", "gcc", "libc-dev"]
# USER yt-dlp
RUN ["python3", "-m", "pip", "install", "--upgrade", "yt-dlp"]
