# AIFFEL Campus Online 5th Code Peer Review Templete
- 코더 : 박영수
- 리뷰어 : 임현석

# PRT(Peer Review Template)
- [△]  **1. 주어진 문제를 해결하는 완성된 코드가 제출되었나요?**
    - 문제에서 요구하는 최종 결과물이 첨부되었는지 확인
    - 문제를 해결하는 완성된 코드란 프로젝트 루브릭 3개 중 2개, 퀘스트 문제 요구조건 등을 지칭
Abstractive 모델 구성을 위한 텍스트 전처리 단계가 체계적으로 진행되었다.	

텍스트 요약모델이 성공적으로 학습되었음을 확인하였다.
        
    
- [o]  **2. 전체 코드에서 가장 핵심적이거나 가장 복잡하고 이해하기 어려운 부분에 작성된 
주석 또는 doc string을 보고 해당 코드가 잘 이해되었나요?**
    - 해당 코드 블럭에 doc string/annotation이 달려 있는지 확인
    - 해당 코드가 무슨 기능을 하는지, 왜 그렇게 짜여진건지, 작동 메커니즘이 뭔지 기술.
    - 주석을 보고 코드 이해가 잘 되었는지 확인
```python
단어 집합(vocabulary)의 크기 : 63061
등장 빈도가 6번 이하인 희귀 단어의 수: 43006
단어 집합에서 희귀 단어를 제외시킬 경우의 단어 집합의 크기 20055
단어 집합에서 희귀 단어의 비율: 68.197459602607
전체 등장 빈도에서 희귀 단어 등장 빈도 비율: 3.8777839484222905
단어 집합 내에서 희귀 단어의 비율이 68% 를 차지하나, 전체 훈련데이터 등장 빈도로 차지하는 비중은 3.9% 밖에 차지 하지 않음.
그래서 6회 이하의 단어는 빼고 훈련데이터에서 제거
단어 집합에서 희귀 단어를 제외시킬 경우 단어 집합의 크기가 2만개 이므로 단어 집합의 크기를 제한
```
        
- [o]  **3. 에러가 난 부분을 디버깅하여 문제를 “해결한 기록을 남겼거나” 
”새로운 시도 또는 추가 실험을 수행”해봤나요?**
    - 문제 원인 및 해결 과정을 잘 기록하였는지 확인
    - 문제에서 요구하는 조건에 더해 추가적으로 수행한 나만의 시도, 실험이 기록되어 있는지 확인
```python
model.compile(optimizer='rmsprop', loss='sparse_categorical_crossentropy')
# es = EarlyStopping(monitor='val_loss', patience=2, verbose=1)
history = model.fit(x=[encoder_input_train, decoder_input_train], y=decoder_target_train, \
          validation_data=([encoder_input_test, decoder_input_test], decoder_target_test), \
          batch_size=1024, epochs=10)
```
  
        
- [o]  **4. 회고를 잘 작성했나요?**
    - 주어진 문제를 해결하는 완성된 코드 내지 프로젝트 결과물에 대해
    배운점과 아쉬운점, 느낀점 등이 기록되어 있는지 확인
    - 전체 코드 실행 플로우를 그래프로 그려서 이해를 돕고 있는지 확인
```python
# loss가 줄어드는것 시각화 하겠습니다.
plt.plot(history.history['loss'], label='train')
plt.plot(history.history['val_loss'], label='test')
plt.legend()
plt.show()
```
        
- [o]  **5. 코드가 간결하고 효율적인가요?**
    - 파이썬 스타일 가이드 (PEP8) 를 준수하였는지 확인
    - 하드코딩을 하지않고 함수화, 모듈화가 가능한 부분은 함수를 만들거나 클래스로 짰는지
    - 코드 중복을 최소화하고 범용적으로 사용할 수 있도록 함수화했는지
     
```python
# 원문의 정수 시퀀스를 텍스트 시퀀스로 변환
def seq2text(input_seq):
    temp=''
    for i in input_seq:
        if (i!=0):
            temp = temp + src_index_to_word[i]+' '
    return temp

# 요약문의 정수 시퀀스를 텍스트 시퀀스로 변환
def seq2summary(input_seq):
    temp=''
    for i in input_seq:
        if ((i!=0 and i!=tar_word_to_index['sostoken']) and i!=tar_word_to_index['eostoken']):
            temp = temp + tar_index_to_word[i] + ' '
    return temp
```
# 참고 링크 및 코드 개선


