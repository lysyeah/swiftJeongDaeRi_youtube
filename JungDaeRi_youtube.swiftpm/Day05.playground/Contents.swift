import UIKit

//옵셔널변수 unwrap
//옵셔널이란?
//값이 있는지 없는지 모르는 것.

//값이 없을 때는 아래처럼 사용한다.
//var someVariable : Int = nil처럼하면 nil이라는 값이 있는 것이다.
var someVariable : Int? = nil

if someVariable == nil {
    someVariable = 90
}

print("someVariable: " , someVariable)
//someVariable:  Optional(90)
//아래처럼 해도 된다.
//print("someVariable:  \(someVariable)")

//90에 마우스를 올려서 확인하면 옵셔널 90이라는 것을 확인할 수 있다.
//언랩핑이란? 랩 즉 감싸져 있는 것을 벗기는 것.

//otherVairable은 래핑이 아니게 된다. 즉, 90이라는 수치만 가져오게 된다. = 언래핑하는 행위.
if let otherVariable = someVariable {
    print ("언래핑 되었다. 즉 값이 있다. otherVariable : \(otherVariable)")
    // 언래핑 되었다. 즉 값이 있다. otherVariable : 90
}else {
    print("값이 없다.")
}

//someVariable에 nil값을 넣어보자.
someVariable = nil

// someVariable 이 비어 있으면(nil값이면) 즉 값이 없으면 기본값으로 이놈을 넣겠다.
// someVariable에 값이 없으면 기본값 10을 넣겠다.
let myValue = someVariable ?? 10
print("myValue: \(myValue)")

var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue: \(firstValue)")
// firstValue: Optional(30)
print("secondValue: \(secondValue)")
// secondValue: Optional(50)



unwrap(parameter : firstValue)
unwrap(parameter : secondValue)

// 언래핑하는 함수를 만들어보자.
func unwrap(parameter : Int?){
    print("unwrap() called")
    // 값이 없으면 리턴해버린다.
    // 즉 지나간다.
    guard let unWrappedParam = parameter
    else {
        return
    }
    print("unWrappedParam: \(unWrappedParam)")
}

/*
 파라미터를 쓰기 싫을 때는 이런 식으로 할 수 있다.
 
 unwrap(firstValue)
 unwrap(secondValue)

 // 언래핑하는 함수를 만들어보자.
 func unwrap(_ parameter : Int?){
     print("unwrap() called")
     // 값이 없으면 리턴해버린다.
     // 즉 지나간다.
     guard let unWrappedParam = parameter
     else {
         return
     }
     print("unWrappedParam: \(unWrappedParam)")
 }
 */
