FROM python:3.8.18-slim-bullseye

WORKDIR /code

COPY . .

RUN pip3 install -r requirements.txt

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 --index-url https://download.pytorch.org/whl/cu121
RUN pip install typing-extensions==4.3.0

CMD ["/bin/bash"]
