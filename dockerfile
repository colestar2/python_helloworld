# Dockerfile

# 기본 이미지로 Python 3.8 이미지를 사용
FROM ubuntu:20.04

# 작업 디렉토리를 /app으로 설정
WORKDIR /app



RUN apt-get update / && apt-get install -y python3
# 현재 디렉토리의 모든 파일을 Docker 이미지의 /app 디렉토리에 복사
COPY . /app

# 필요한 경우, 추가적인 의존성 패키지 설치 등을 수행할 수 있습니다.
# 예를 들어, requirements.txt가 있다면 다음과 같이 추가할 수 있습니다.
# COPY requirements.txt /app
# RUN pip install -r requirements.txt

# 컨테이너가 시작될 때 실행할 명령을 지정합니다.
CMD ["python3", "hello.py"]
