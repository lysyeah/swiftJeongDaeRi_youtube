import UIKit
//콜레션 : 데이터를 모아둔 것
// 배열, 셋, 딕셔너리, 튜플
// 배열

var myArray : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

//for item in myArray {
//    print("item : \(item)")
//}
//
//for item in myArray where item > 5 {
//    print ("item: \(item)")
//}

for item in myArray where item % 2 == 0 {
    print ("짝수: \(item)")
}

for item in myArray where item % 2 != 0 {
    print ("홀수: \(item)")
}
