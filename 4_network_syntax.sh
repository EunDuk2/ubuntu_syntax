# 프로세스 목록 조회
ps -ef
ps -ef | grep "nginx"

# 패키지 관련
# yum : 레드헷계열 패키지 관리 도구
# apt 또는 apt-get : 데비안계열 패키지 관리 도구

# 패키지 목록 최신화
sudo apt update

# nginx 설치
sudo apt install nginx

# 프로그램 실행관리 도구 : systemctl
# 안정적인 프로그램 관리 툴
sudo systemctl start nginx
sudo systemctl stop nginx

# 프로세스 강제 종료
kill -9 프로세스ID (PID)

# 네트워크 관련한 명령어
# 로컬 ip 정보 조회
ifconfig

# 특정 도메인의 ip 주소 정보 조회 : DNS서버에 문의
nslookup naver.com

# 네트워크 연결 상태 조회
# 일반적으로 핑은 보안상 막아두고 있음
ping IP주소
ping 8.8.8.8

# ip와 포트를 이용하여
# 특정 서버가 살아오는지 + 해당 서버를 사용할 수 있는 지 여부
# 일반적으로 telnet 막혀있거나 / 사용하기를 권장하지 않음
telnet IP주소 포트번호 # 잘 안 씀

# ping으로 원하는 컴퓨터와 연결 가능한지
# telnet과 nc로 해당 컴퓨터의 특정 프로그램을 사용가능한지
# 특정 프로그램1 : 포트번호 8081 / 특정 프로그램2 : 포트번호 8082

# ip와 포트를 이용해 / 특정 프로그램의 이용가능상태까지 조회
# netcat 줄인말
nc -zv IP주소(또는 도메인) 포트번호

# 원격 접속 : 22포트
ssh 계정명@도메인주소(또는 IP주소)

# 원격파일 전송 : 22포트
scp 전송하고자 하는 파일 원격지 주소

