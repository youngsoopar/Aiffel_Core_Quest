<aside>
🔑 **PRT(Peer Review Template)**

- 코더 : 박영수
- 리뷰어 : 이진영



- [X]  **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
    - 특수문자를 처리하는 함수를 사용하였다.
    - 트랜스포머 모델을 구현하였다.
    - 한국어로 진행되는 챗봇을 만들었다.

    
- [X]  **2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 
주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?**
    - 노드랑 다르게 한국어로 진행하기 때문에 전처리를 다르게 해야하는데 전처리에 대한 설명이 주석으로 잘 설명하였다.

        
- [X]  **3. 에러가 난 부분을 디버깅하여 문제를 “해결한 기록을 남겼거나” 
”새로운 시도 또는 추가 실험을 수행”해봤나요?**
    - 2번에서 설명했다 싶이 기존노드에서 전처리 함수의 변형이 진행되었다.

        
- [X]  **4. 회고를 잘 작성했나요?**
    -  데이터셋에 대한 근본적인 문제나, 영어와 한국어의 특색에 따른 문제점을 파악하려고 노력하였다.


- [X]  **5. 코드가 간결하고 효율적인가요?**
    - 노드를 잘 따라가면서 효율적으로 진행하였다.

# 코드개선점
```python
# 전처리 함수
def preprocess_sentence(sentence):
  # 입력받은 sentence를 소문자로 변경하고 양쪽 공백을 제거
  sentence = sentence.lower().strip()

  # 단어와 구두점(punctuation) 사이의 거리를 만듭니다.
  # 예를 들어서 "I am a student." => "I am a student ."와 같이
  # student와 온점 사이에 거리를 만듭니다.
  sentence = re.sub(r"([?.!,])", r" \1 ", sentence)
  sentence = re.sub(r'[" "]+', " ", sentence)

  # (a-z, A-Z, ".", "?", "!", ",")를 제외한 모든 문자를 공백인 ' '로 대체합니다.
  sentence = re.sub(r"[^a-zA-Z?.!,]+", " ", sentence)
  sentence = sentence.strip()
  return sentence
```
이 부분에서  sentence = sentence.lower().strip() 한국어이기 때문에 소문자로 변경하는 코드는 없어도 될 것 같다.
