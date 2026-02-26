FROM python:3.10-slim

RUN apt update && \
    apt install -y git && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*


Run pip install -r requirments.txt
CMD ["bash"]
