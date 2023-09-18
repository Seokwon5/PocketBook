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


#### 검색 화면
<img src = "https://github.com/Seokwon5/PocketBook/assets/77192860/8ae9e57e-30b6-4fd9-9576-9324a55a635b" width = "200" height = "400">

- Alamofire을 이용하여 네이버 오픈 API를 요청하고 응답받았습니다
- 사용자가 검색창에 텍스트를 입력할 때마다 검색 요청을 하는 프로토콜을 생성하였습니다

### 디테일 뷰
<img src = "https://github.com/Seokwon5/PocketBook/assets/77192860/baeddc1b-5adb-4373-9268-ad08269a25b3" width = "200" height = "400">

#### AlertView
- alertViewController를 생성하여 책 데이터의 상태를 구분하도록 구현하였습니다.

### 🏠 홈 화면
<img src = "https://github.com/Seokwon5/PocketBook/assets/77192860/6606873c-83ff-4843-9091-d3cfd7fb7926" width = "200" height = "400">

#### TabBarController
- 최근에 분류한 책들을 보기 위한 홈 화면과 책 전체를 다루는 서재 화면으로 나누었습니다
#### CollectionView, TableView
- '읽는 중'인 책은 CollectionView로 구현하였습니다
- '다 읽은 책'은 TableView로 구현하였습니다





