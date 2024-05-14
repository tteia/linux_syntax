# 문자열 검색
grep -rni "hello"
- -r옵션 : 디렉토리 내 모든 파일에서 검색
- -i옵션 : 대소문자 구분 없이 검색
- -n옵션 : 라인수 출력

ps -ef | grep -rni “hello” #| 파이프라인.. 폰트 문제로 / 처럼 보인다 => | 은 왼쪽 실행문의 결과값을 오른쪽 실행문의 입력값으로 전달

# 파일 또는 디렉토리 검색 : find

find . -name "*.sh" # shell 파일을 찾아준다.
find . -name "*.sh" | grep "hello" # 이 경우 sh 파일 이름에서 hello를 찾게 되므로 아무것도 나오지 않는다.

# 파일 검색 후 해당 내용에서 원하는 문자열 찾을 때
find . -name "*.sh" | xargs grep -rni "hello" # xargs는 입력받은 파일 목록을 한줄씩 읽는것을 의미

# exec 옵션을 통한 find 와 grep
find . -name "*.sh" -exec grep -n "hello" {} \;
