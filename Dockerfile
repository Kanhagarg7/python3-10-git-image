FROM python:3.10-slim

RUN apt update && \
    apt install -y git && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*


RUN pip install telethon python-decouple python-dotenv akinator apscheduler aiohttp bs4 enhancer>=0.3.4 gitpython google-api-python-client htmlwebshot lottie lxml numpy>=1.21.2 oauth2client opencv-python-headless profanitydetector psutil pymongo pytz qrcode requests telegraph tgcrypto
CMD ["bash"]
