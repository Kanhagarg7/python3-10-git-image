FROM python:3.10-slim

RUN apt update && \
    apt install -y git ffmpeg mediainfo && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    telethon python-decouple python-dotenv akinator apscheduler aiohttp bs4 \
    "enhancer>=0.3.4" gitpython google-api-python-client htmlwebshot lottie \
    "pillow>=7.0.0" lxml "numpy>=1.21.2" oauth2client opencv-python-headless \
    profanitydetector psutil pymongo pytz qrcode requests telegraph tgcrypto \
    playwright

RUN playwright install chromium && \
    playwright install-deps chromium

CMD ["bash"]
