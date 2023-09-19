## PocketBook
사용자가 가진 책들을 저장하고 분류하는 서재 관리 어플입니다.

## 개발 도구
* Xcode
* Swift
* UIKit
* Snapkit
* Alamofire
* RestAPI
* UserDefaults

## 개발 환경
- **Develoment Target** : ios 16.4 
- **Xcode** : v14.0

## 기능 구현
### 📚 서재 화면

#### FilterButtonView
<img src = "https://github.com/Seokwon5/PocketBook/assets/77192860/7c763934-442c-442a-b694-751822bff32f" width = "200" height = "400">

- 필터링 버튼뷰를 넣어 분류된 책을 따로 볼 수 있도록 구현하였습니다

#### 친구 저장
<img src = "https://github.com/Seokwon5/PocketBook/assets/77192860/cc185310-ffba-42da-875e-aa1981cf7771" width = "200" height = "400">

- NSManagedObjectContext메소드를 이용하여 데이터를 저장하였습니다.
- Picker를 이용하여 MBTI 저장을 편리하게 구현하였습니다.

### 상세 화면
<img src = "https://github.com/Seokwon5/PocketBook/assets/77192860/baeddc1b-5adb-4373-9268-ad08269a25b3" width = "200" height = "400">

#### AlertView
- alertViewController를 생성하여 책 데이터의 상태를 구분하도록 구현하였습니다.
- 삭제 버튼을 생성하고 프로토콜을 이용하여 저장된 데이터를 삭제하는 작업을 구현하였습니다.

### 🏠 홈 화면
<img src = "https://github.com/Seokwon5/PocketBook/assets/77192860/6606873c-83ff-4843-9091-d3cfd7fb7926" width = "200" height = "400">

#### TabBarController
- 최근에 분류한 책들을 보기 위한 홈 화면과 책 전체를 다루는 서재 화면으로 나누었습니다
#### CollectionView, TableView
- '읽는 중'인 책은 CollectionView로 구현하였습니다
- '다 읽은 책'은 TableView로 구현하였습니다
- range메소드의 정규표현식을 이용하여 책 제목의 소괄호안의 글자를 삭제하였습니다





