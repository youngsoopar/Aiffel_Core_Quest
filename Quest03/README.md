# AIFFEL Campus Online 5th Code Peer Review Templete
- 코더 : 박영수님
- 리뷰어 : 이진영


# PRT(PeerReviewTemplate) 
각 항목을 스스로 확인하고 토의하여 작성한 코드에 적용합니다.

- [X] 코드가 정상적으로 동작하고 주어진 문제를 해결했나요?
   네 문제를 해결하고, 잘 작동합니다. 
- [X] 주석을 보고 작성자의 코드가 이해되었나요?
  > 주석이 간결하고, 깔끔했습니다.
- [X] 코드가 에러를 유발할 가능성이 없나요?
  > 제 생각으로는 에러를 유발할 가능성은 없어 보입니다.
- [X] 코드 작성자가 코드를 제대로 이해하고 작성했나요?
  > 5번 주석이 제 지식이 짧아 정확하게 이해가 되지 않아 물어보았는데, 이해하기 쉽게 설명해주신 걸 보니 이해하고 작성하신 것 같습니다.
- [X] 코드가 간결한가요?
  > 네. 13줄 코드로 간단하게 잘 만드신 거 같습니다.

# 예시
1. 코드의 작동 방식을 주석으로 기록합니다.
2. 코드의 작동 방식에 대한 개선 방법을 주석으로 기록합니다.
3. 참고한 링크 및 ChatGPT 프롬프트 명령어가 있다면 주석으로 남겨주세요.
```python
# 사칙 연산 계산기
class calculator:
    # 예) init의 역할과 각 매서드의 의미를 서술
    def __init__(self, first, second):
        self.first = first
        self.second = second
    
    # 예) 덧셈과 연산 작동 방식에 대한 서술
    def add(self):
        result = self.first + self.second
        return result

a = float(input('첫번째 값을 입력하세요.')) 
b = float(input('두번째 값을 입력하세요.')) 
c = calculator(a, b)
print('덧셈', c.add()) 
```

# 참고 링크 및 코드 개선
```python
# 정규표현식의 코드를 저와 다르게 사용하여 질문하였고 새로운 방법을 알게 되어 유익했습니다.
# 영수님 코드=script = re.sub('[^a-zA-Z\s]', ' ', script) / 제 코드 words = re.findall(r'\b\w+\b', script)
```
