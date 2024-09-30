# 베이스 이미지로 Python 3.9 사용
FROM python:3.9-slim

# 작업 디렉터리 설정
WORKDIR /app

# 의존성 파일 복사
COPY requirements.txt .

# 의존성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 코드 복사
COPY /app /app/app

# Uvicorn을 사용하여 애플리케이션 실행
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
