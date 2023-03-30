import UIKit

// For 반복문

//레인지 range
// 0...5
//0,1,2,3,4,5

//0..<5
//0,1,2,3,4

// 여기에서 i는 iterate을 의미하는 것이 일반적이다. index를 의미하기도 한다.
//for i in 0...5{
//    print("호호 i: \(i)")
//}

//for index in 0..<5{
//    print("호호 index: \(index)")
//}

//for index in 0..<5 where index % 2 == 0 {
//    print("호호 짝수 index: \(index)")
//}

//var randomInts : [Int] = []
//아래방법으로 해도 된다./*
var randomInts : [Int] = [Int]()
// _의 의미는 변수를 쓰고 싶지 않을 때.
for _ in 0..<25 {
    let randomNumber = Int.random(in : 0...100)
    randomInts.append(randomNumber)
}

print("randomInts: \(randomInts)")
