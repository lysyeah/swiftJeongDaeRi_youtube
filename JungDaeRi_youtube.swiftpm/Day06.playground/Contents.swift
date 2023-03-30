import UIKit

// struct vs class


//struct
//유튜버 (데이터) 모델 - struct = 구조체
struct YoutuberStruct {
    var name : String
    var subscribersCount : Int
}

var devJeong = YoutuberStruct(name : "정대리", subscribersCount: 9999)

var devJeongClone = devJeong

print("=====struct=====")

print("값을 넣은 전 devJeongClone.name: \(devJeongClone.name)") //정대리
    // 값을 바꿔서 프린트 해보자.
    
    //'정대리'에서 '호롤롤롤로'로 변경
    devJeongClone.name = "호롤롤롤로"

// 값 복사이기ㄷ 때문에 값이 다르다.
print("값을 넣은 후 devJeongClone.name: \(devJeongClone.name)") //호롤롤롤로

print("값을 넣은 후 devJeong.name: \(devJeong.name)") //정대리, 값 복사이기 떄문에 그대로 나온다.





// class
class YoutuberClass {
    var name : String
    var subscribersCount : Int
    // 생성자 - 즉 메모리에 올린다.
    // Init 으로 매개변수를 가진 생성자 메소드를 만들어야
    // 매개변수를 넣어서 그 값을 가진 객체(object)를 만들 수 있다.
    init(name: String, subscribersCount: Int ){
        self.name = name
        self.subscribersCount = subscribersCount
    }
}

print("=====class=====")

var jeongDaeRi = YoutuberClass(name : "정대리", subscribersCount: 9999)
var jeongDaeRiClone = jeongDaeRi

print("값을 넣은 전 jeongDaeRiClone.name : \(jeongDaeRiClone.name)") //정대리

jeongDaeRiClone.name = "호롤로"

print("값을 넣은 후 jeongDaeRiClone.name : \(jeongDaeRiClone.name)") //호롤로

print("값을 넣은 후 jeongDaeRi.name : \(jeongDaeRi.name)") // 호롤로


// struct는 다른 종이에 복사를 한것이고
// class는 서로 연결되어 있어서 변경한 이후 값은 계속 동일하다.
// 즉 class는 메모리에 올려둔 정보를 바라보고 있다. sync되어있다.
// 정대리클론이랑 정대리 둘다 메모리에 저장된 내용을 바라 보고 있어서 struct와 다르게
// 값이 둘다 '호롤로'로 나온다.
