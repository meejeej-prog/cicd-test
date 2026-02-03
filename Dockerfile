FROM python:3.14-alpine



# 작업 디렉토리 설정

WORKDIR /app



# 종속성 설치

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt



# 소스 코드 복사

COPY . .



# 실행 병령

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]