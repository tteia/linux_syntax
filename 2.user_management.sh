# 사용자 추가
useradd 사용자명
# 패스워드 지정
passwd 사용자명
# 사용자 목록 조회
cat /etc/passwd

# 사용자 전환 - 비밀번호는 전환하고자하는 사용자 비밀번호
sudo su - 사용자명 #sudo는 이전에 했다면 생략 가능


# 파일 권한 관리 - chmod 는 리눅스에서 가장 많이 쓰이는 명령어.
# 권한은 세 파트로 구성되어 있고(user:group:others), 각 권한은 r(4)w(2)x(1)로 이루어져있음. 그룹 >> 만든 사람
chmod 777 test.sh #모든 권한을 부여하겠다! 유저, 그룹, others 전부에게!
chmod u+x test.sh #유저한테 x 권한을 주겠다!
chmod g-w test.sh #그룹에서 w 권한을 빼겠다!

# 파일 소유자 / 그룹 관리
# 소유자와 그룹 변경
chown 소유자:그룹 파일명