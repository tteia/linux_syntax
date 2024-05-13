# 사용자가 현재 위치해 있는 폴더 경로 출력 명령어
pwd

# git add. = > 수정한 파일을 모두 load 하겠다! .이 모든 파일을 뜻함.
# git commit -m "first file" = > commit > 확정하겠다 / m : message
# git push origin main >> github에 올리겠다! (main에다 하겠다)

# 방금 입력한 말 그대로 입력 = > 화살표 위 버튼

## 필수 명령어 목록
# 현재 위치에서 파일, 폴더 목록 출력
ls

#  +자세히
ls -l

# +숨김파일까지 출력
ls -al

# 시간 순서로 정렬
ls -alrt

# 디렉토리 생성 (mkdir 뒤에 오는 이름으로 생성됨)
mkdir my_dir

# 특정 디렉토리로 이동
cd my_dir

#루트 디렉토리 (최상단의 디렉토리)로 이동
cd /

# 절대 경로 폴더로 이동
# tab을 이용해서 자동완성 가능
cd /users/tteia/my_dir

# 상대 경로 폴더로 이동
# 일반적으로 ..은 한 단계 상위 폴더를 의미 / .은 현재 폴더를 의미
cd .. 

# user 경로로 이동 (특정 계정의 home 계정)
cd

# 직전 위치의 폴더로 이동
cd -

# 파일 생성 (비어있는)
touch first_file.txt

#파일 내용 조회
cat first_file.txt

# 터미널창에 문자열을 출력
echo "hello world"

# echo를 통해 파일에 문자열을 작성하는 방법
# > 하나를 쓰면 덮어쓰기 모드, >> 두개를 쓰면 추가 모드
echo "hello world" > first_file.txt

# history 명령어를 통해 이전에 실행했던 명령어 조회
history 

# 입력 중인 명령창 정리
clear

# 이동 명령어로 잘라내서 붙이기 / 이름 바꾸기 모두 가능
# 이름을 바꾼다는 것 자체가 a.txt를 오려내서 b.txt에 붙여 넣는 것. 붙여넣는 순간에 이름을 b로 바꿔서 붙여넣는다.
mv
# mv는 이동 명령어. "mv a.txt b.txt" 형식으로 사용 = > 사실상 이름 변경
#"mv a.txt ../a.txt" = > a.txt를 상위 폴더로 이동 시킴 a.txt를 b.txt로 하면 이름 바꿔서 붙여넣음

# 복사 명령어는 cp, 디렉토리까지 복사시에는 -r 옵션 추가
cp second_file.txt third_file.txt

# rm은 삭제 명령어. -r 옵션을 통해 디렉토리까지 삭제 가능
# 리눅스마다 차이가 있으나 삭제 여부를 물어보는 경우가 있는데,
# -f 옵션은 묻지 않고 삭제가 가능하게 한다.
rm third_file.txt
# 묻지않고 디렉토리까지 모두 삭제하는 명령어는
rm -rf my_dir3
# rm -rf / 는 모두 지울 수 있는 명령어
# 현재 폴더에 있는 모든 파일 삭제
rm -rf *

# head는 cat처럼 파일을 출력하는 것인데, 상위 n개 행을 조회한다.
# tail은 하위 n개 행을 조회
head first_file.txt # 기본은 상위 10줄 출력
head -5 first_file.txt # 상위 5줄 출력 (tail도 모두 동일)


# nano 편집기 사용
nano 파일명
# Q.모든 운영체제에 nano 편집기가 설치 되어있을까? A.배포판마다 다르다! 일반적으로 vi 편집기는 대부분 설치가 되어있다.
# vi 편집기의 역사가 깊다. nano는 메모장과 비슷. vi는 아예 다르다!