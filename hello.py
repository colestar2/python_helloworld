from flask import Flask

# Flask 애플리케이션을 생성합니다.
app = Flask(__name__)

# 루트 경로 '/' 에 대한 요청을 처리하는 함수를 정의합니다.
@app.route('/')
def hello():
    return '누구세요?'

# 이 스크립트가 메인으로 실행될 때, Flask 애플리케이션을 실행합니다.
if __name__ == '__main__':
    app.run()
