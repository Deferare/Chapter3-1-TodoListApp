# Chapter3-1-TodoListApp

### ⚙ 필수과제: 반드시 구현해야 할 기능이에요.
#### LV1. Todo List 화면 만들기
#### LV2. Todo 추가 및 완료 기능 구현하기
#### LV3. Todo 삭제 기능 구현하기

----

## 1️⃣ Lv1. Todo List 화면 만들기 (TodoListViewController)

1. **UI 구현하기**
	- Storyboard를 활용하여 기본 Todo List 화면 UI를 구성해주세요.
		- UI는 자유롭게 구성해도 됩니다. 다만, 요구사항을 지켜주세요.
2. **Todo에 필요한 데이터를 구성해보아요.**
	- 할일에 대한 Title (String), 완료 여부를 확인할 isCompleted (Bool) 등 데이터를 구성해요.
	- 그 외 나타내주고 싶은 데이터가 있다면 자유롭게 추가해도 좋습니다.
	- 필요하다면 테스트 데이터를 넣어서 UI에서 확인해볼 수 있습니다.
	- 예시:

	swiftCopy code

	`struct Todo {

	// 타이틀 (String)

	// 완료 여부 (Bool)

	// 기타 추가로 나타내고 싶은 데이터가 있으면 구성해줍니다.

	}`


3. **UIButton과 UITableView을 활용하여 화면을 구성해주세요.**
	- Todo 추가
	- Todo List


----

## 2️⃣ Lv2. Todo 추가 및 완료 기능 구현하기 (TodoListViewController)

- **Todo 추가하기**
	- Lv1에서 만든 Todo 추가 버튼을 이용해주세요.
	- UIAlertController를 활용해서 할 일 추가 UI 및 기능을 구현해보세요.
		- Closure 등을 사용해서 Action을 추가해보아요.
		- 개발자 공식문서 참고: [UIAlertController | Apple Developer Documentation](https://developer.apple.com/documentation/uikit/uialertcontroller)
- **Todo 완료하기**
	- 버튼 혹은 UISegmentedControl 등을 활용하여 Todo의 완료 상태를 완료/미완료 상태로 만들어주세요.
	- 할일을 나타내는 Todo의 완료/미완료 상태에 따라 UI를 변경해주세요.


----

## 3️⃣ Lv3. Todo 삭제 기능 구현하기 (TodoListViewController)

- **Todo 삭제하기**
	- Todo List에서 특정 Todo를 삭제할 수 있도록 화면과 기능을 자유롭게 구성해보세요.
	- Todo Cell에 삭제 UIButton을 구성하여도 되고, Todo를 스와이프하여 삭제하여도 좋습니다.
		- 스와이프 삭제 시 UITableView의 기능을 이용해봐요.


----

## ✅ 선택구현기능

- **Lv4**
	- Todo Cell 발전시키기
		- Todo 데이터에 들어있는 다양한 요소들을 배치해보아요.
		- Interface Builder의 수많은 속성들을 바꾸어보세요.

			- UIImageView - Todo에 사진 추가하기

			- UILabel - Due date 시간 추가하기

			- 기타 자유로운 UIKit 요소 추가 및 속성 변경


- **Lv5**
	- 할일 추가 등 animation이 있는 코드 구성하기
		- iOS에서는 기본적으로 구현해주는 animation들이 다양하게 있어요

			- tableview에 cell이 추가되거나 삭제되는 animation

			- 기타 시도해보고 싶은 기능
