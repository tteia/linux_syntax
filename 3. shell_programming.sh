#  script 파일 생성
touch myscript.sh

# shell 명령어 응용 실습
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

file_name="second_file.txt"
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else
    echo "$file_name does not exist"
fi

for a in {1..100}
do
    echo "hello world$a"
done

#  if문
if []; then
    echo "hello world1"
else
    echo "hello world2"
fi

1 > 2 와 같은 부등호 인식 X
=> if [ 1 -gt 2 ]; 로 활용. 사이 꼭 띄워주기 !


# if문과 변수 활용, 파일(-f) / 디렉토리(-d) 존재 여부 확인
file_name="second_file.txt"
if [ -f "$file_name" ]; then # $ => 변수 불러오기
    echo "$file_name exists"
else
    echo "$file_name does not exist"
fi

# for문 기본
# {}안의 숫자를 a에 담는다! (1부터 100까지) => 100번 반복해라
for a in {1..100}
do
    echo "hello world$a"
done

# if와 for문 응용 실습
echo "start"
if [ -d test_dir ]; then
        cd test_dir
else
        mkdir test_dir
        cd test_dir
fi

echo "end"

if [ -f test4.txt ]; then
        echo "test4.txt exists"
else
        touch test4.txt
        for a in {1..100}
        do
                echo "hello world$a" >> test4.txt
        done
fi

# for문 활용을 통한 카운트 세기
count=0
for a in {1..100}
do
    ((count++))
done
echo "count is $count"

# for문 활용한 모든 file 및 directory 목록 출력하기
for a in *
do
    echo "a is $a"
done

# for문 응용 실습
count=0
for a in {1..100}
do
        ((count++))
done
echo "count is $count"

for a in *
do
    echo "a is $a"
done

dir=0
others=0
for a in *
do
        if [ -d $a ]; then
                ((dir++))
        else
                ((others++))
        fi
done
echo "dir is $dir"
echo "else is $others"

