FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    tesseract-ocr \
	tesseract-ocr-chi-sim \
	python3 \
	python3-pip \
	python-is-python3 \
	vim

COPY digits /usr/share/tesseract-ocr/tessdata/configs/digits

COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt 
COPY app.py /app.py
CMD python app.py
