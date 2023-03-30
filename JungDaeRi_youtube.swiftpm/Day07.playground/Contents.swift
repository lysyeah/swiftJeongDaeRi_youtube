import UIKit

// property observer

var myAge = 0 {
    willSet{
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet{
        print("값이 설정되었다. myAge: \(myAge)")
    }
}

myAge = 10


// 아니 그래서 이걸 언제 쓰는 거야
