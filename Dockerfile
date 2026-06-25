FROM python:3.10-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# 注意：这里路径改成了从 python/ 目录中复制
COPY pyhton/ .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 3000

CMD ["python", "app.py"]