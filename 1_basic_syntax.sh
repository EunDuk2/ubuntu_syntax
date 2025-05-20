# 현재 위치 경로를 출력
pwd

# 현재위치에서 파일 및 폴더 조회
ls

# 목록조회 자세히
ls -l

# 목록조회 자세히 + 숨김파일까지
ls -al

# 목록조회 자세히 + 숨김파일 + 오래된 순으로 정렬
ls -alrt

# 현재위치에서 디렉토리 생성
mkdir eunsung_dir

# 특정 디렉토리로 이동
cd eunsung_dir

# 상위 디렉토리 이동
cd ..
# 또는
cd ../

# 루트 디렉토리로 이동 (최상위 디렉토리)
cd /

# 직전 폴더로 이동
cd -

# 홈(/home/eunsung) 경로로 이동
cd

# 상대경로와 절대경로
# 상대경로 : cd ../../
# 절대경로 : cd /home

# 25.05.20
# 비어있는 파일 만들기
touch first_file.txt

# 파일내용 터미널창에 출력하기
cat first_file.txt

# 파일 내용 상위 10줄 출력하기
head 파일명

# 파일 내용 하위 10줄 출력하기
# 최신 로그 확인을 위해 tail 자주 사용
tail 파일명

# 파일 내용 상/하위 n개 조회
head/tail -n 파일명

# 파일내용 실시간 조회(f는 실시간성 특성도 있음)
tail -f 파일명

# 파일내용 편집기 : nano, vi

# 도스키 위/아래를 통해 이전 명령어 조회

# 이전에 실행했던 명령어 모두 조회
history

# 현재 내 터미널창에 보이는 명령어 내역 정리
clear

# control C (^C) 통해 입력 명령어 취소

# 파일 삭제 명령어 (-f 옵션을 통해 강제 삭제)
rm 파일명

# 폴더째 삭제 명령어
rm -r 폴더명

# 터미널창에 문자열 출력
echo "hello world"
# echo를 통해 파일에 내용 입력
# > : 덮어쓰기 / >> : 내용 추가
echo "hello world" > first_file.txt

# 복사 명령어
# cp 복사대상 복사 될 파일명명
# 폴더 복사시에는 -r 옵션
cp 1_file.txt 2_file.txt

# 상위 폴더로 복사
cp 1_file.txt ../2_file.txt

# grep : 파일 내에서 문자열 찾기
# r: 모든 디렉토리 내 / n: 라인 수 출력 / i: 대소문자 구분x
grep -rni "hello" .

# find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt"
# 타입이 file인 것 (폴더는 d)
find . -type f

# find와 grep의 혼용
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;

# 타입은 file인 파일중에 이름은 first로 시작하고
# 그 파일들 안에 hello라는 키워드가 있는 문장 찾기
find . -name "first*" -type f | xargs grep -rni "hello"
