import UIKit
//generic
//어떤 자료형이든지 받을 수 있다.

// 제네릭 <T>
// 제네릭으로 어던 자료형이 들어올 수 있도록 설정.
// 보통 제네릭을 할 때 T로 한다. 아마도 Type의 약자이지 않을까 한다.
// struct MyArray<T>{
struct MyArray<SomeElement>{
    //제네릭을 담은 빈 배열, 멤버변수
    //var elements : [T] = [T]()
    var elements : [SomeElement] = [SomeElement]()
    
    
    // 생성자 메소드
    // _ 앞에 언더바를 넣음으로써 매개변수 이름 생략.
    // struct는 구조체라서 사실 생성자를 만들지 않아도 되지만 편의를 위해 만들자.
    
    // [SomeElement]를 담고 있는 elements.
    // 나 자신의 보라색 엘리먼트에 흰색 elements를 넣는다.
    // init(_ elements: [T]){
    init(_ elements: [SomeElement]){
        self.elements = elements
    }
}

struct Friend {
    var name: String
}

struct PpakCoder{
    var name: String
}

var mySomeArray = MyArray([1,2,3])
print("mySomeArray: \(mySomeArray)")

var myStringArray = MyArray(["가","나","다"])
print("myStringArray : \(myStringArray)")

let friend_01 = Friend(name: "용수")
let friend_02 = Friend(name: "철수")
let friend_03 = Friend(name: "영희")

var myFriendsArray = MyArray([friend_01, friend_02, friend_03])
print("myFriendsArray : \(myFriendsArray)")

