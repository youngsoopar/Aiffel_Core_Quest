# AIFFEL Campus Online 5th Code Peer Review Templete
- 코더 : 박영수
- 리뷰어 : 이규상


# PRT(PeerReviewTemplate) 
각 항목을 스스로 확인하고 토의하여 작성한 코드에 적용합니다.

- [X] 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
  
- [X] 주석을 보고 작성자의 코드가 이해되었나요?
  > 해당 코드들이 무슨 역할을 하는지 정확하게 작성되어 있습니다.
- [X] 코드가 에러를 유발할 가능성이 없나요?
  >네. 다양한 값으로 입력을 받아도 원하는 값을 출력할 것 같습니다
- [X] 코드 작성자가 코드를 제대로 이해하고 작성했나요?
  > 주석에서 코드의 기능과 역할을 설명하고 있는걸 보아 제대로 이해하고 있습니다.
- [X] 코드가 간결한가요?
  > 네.불필요한 코드 없이 간결하게 작성되었습니다.

# 예시
1. 코드의 작동 방식을 주석으로 기록합니다.
2. 코드의 작동 방식에 대한 개선 방법을 주석으로 기록합니다.
3. 참고한 링크 및 ChatGPT 프롬프트 명령어가 있다면 주석으로 남겨주세요.
```python
import time                       #2초 시간 지연을 위한 time 메서드 임포트

# 컴프리헨션
def show_fish_movement_comprehension(fish_list) :     #입력된 컴프리헨션 함수 호출
  movements = [f'{fish["이름"]} is swimming at {fish["speed"]} m/s' for fish in fish_list]      #fstring 및 딕셔너리 key 호출 이용하여 리스트 컴프리헨션 작성
  for i in movements :                                #for문을 이용해 리스트 출력
    print(i)
    time.sleep(2)                                     #시간 2초 지연

# 제너레이터
def show_fish_movement_Generator(fish_list):          #입력된 제너레이터 함수 호출
  def fish_movement_generator():                      #제너레이터 함수 생성
   for fish in fish_list:
    yield f'{fish["이름"]} is swimming at {fish["speed"]} m/s'


  fish_generator = fish_movement_generator()          #계속 사용할 제너레이터 변수 생성
  for j in fish_generator:
      print(j)
      time.sleep(2)


# 물고기 리스트 입력
a = int(input('입력할 물고기 갯수를 입력해주세요.: '))   # 물고기 수를 입력 받는다
fish_list = []

for i in range(a):                              # 물고기 수만큼 이름과 속도를 입력받는다
    name = input("물고기의 이름을 입력하세요.: ")
    speed = int(input("물고기의 속도를 입력하세요.: "))
    fish = {"이름":name, "speed":speed}           # 위의 값을 딕셔너리 형태로 만들어준다
    fish_list.append(fish)                       # 기존 리스트에 위의 값을 붙여 넣는다


print("Using Comprehension:")
show_fish_movement_comprehension(fish_list)
print("Using Generator:")
show_fish_movement_Generator(fish_list)

```

# 참고 링크 및 코드 개선
```python
input 비슷하지만 다른 방법
n = int(input("입력할 물고기의 수를 입력하세요: "))

for i in range(n):
    fish_dict = {}
    key = "이름"
    value = input("물고기 이름을 입력하세요: ")
    key1 = "speed"
    value1 = input("물고기 속도를 입력하세요: ")

    fish_dict[key] = value
    fish_dict[key1] = value1

    fish_list_input.append(fish_dict)

print("Using Comprehension:")
show_fish_movement_comprehension(fish_list)
print("Using Generator:")
show_fish_movement_Generator(fish_list)

print("Using Comprehension(by input):")
show_fish_movement_comprehension(fish_list_input)
print("Using Generator(by input):")
show_fish_movement_Generator(fish_list_input)
```
