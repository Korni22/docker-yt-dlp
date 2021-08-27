FROM python:alpine
USER root
RUN ["python3", "-m", "pip", "install", "--upgrade", "yt-dlp"]
USER yt-dlp
