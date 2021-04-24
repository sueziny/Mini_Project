# Mini_Project
Mini Project
## Usecase Scenerio

M : Main <br>
CF : ChoiceFood <br>
CR : ChoiceRoad <br>
CB : ChoiceButton<br>
B : Board <br>
<hr>

CF-1
| 분류 | 내용 |
| --------------- | ---------------------- |
| usecase name | 취향으로 음식 선택 |
| usecase description | 취향을 선택하면 그에 맞는 음식을 추천해준다. |
| actor | 사용자 |
| goal | 음식 메뉴 선정에 가이드라인을 제공해 쉽게 선택할 수 있도록 한다. |
| basic flow | 1. 취향을 선택한다. ex) 매운 거/ 안 매운 거, 밥/ 면/ 빵/ 떡<br> 2. 취향을 전부 선택할 때까지 1을 반복<br> 3. 결과 리스트 중 하나를 랜덤으로 보여준다.<br> 4. 결과가 마음에 들지 않으면 나머지 중 하나를 랜덤으로 보여준다. <br> 5. 4을 반복 |

CF-2
| 분류 | 내용 |
| --------------- | ---------------------- |
| usecase name | 상황으로 음식 선택 |
| usecase description | 상황을 선택하면 그에 맞는 음식을 추천해준다. |
| actor | 사용자 |
| goal | 음식 메뉴 선정에 가이드라인을 제공해 쉽게 선택할 수 있도록 한다. |
| basic flow | 1. 상황을 선택한다. ex) 초스피드, 간단, ...<br> 2. 결과 리스트 중 하나를 랜덤으로 보여준다.<br> 3. 결과가 마음에 들지 않으면 나머지 중 하나를 랜덤으로 보여준다. <br> 4. 3을 반복 |

CR
| 분류 | 내용 |
| --------------- | ---------------------- |
| usecase name | 중간 지점 찾기 |
| usecase description | 여러 사용자 사이의 중간 지점을 정한다. |
| actor | 사용자1, 사용자2, ... |
| goal | 여러 사용자의 위치를 고려한 최적의 중간 지점을 찾도록 도와준다. |
| basic flow | 1. 사용자별 위치를 입력한다.<br> 2. 지하철역을 기준으로하여 중간 지점을 찾아 결과를 보여준다.<br>  |

CB
| 분류 | 내용 |
| --------------- | ---------------------- |
| usecase name | 의사 결정 버튼 |
| usecase description | Yes or No |
| actor | 사용자 |
| goal | 선택을 도와준다. |
| basic flow | 1. 의사 결정 버튼을 누른다<br> 2. Yes 아니면 No를 보여준다. |
