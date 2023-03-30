import UIKit

//closer

// String을 반환하는 클로저
// 클로저는 메소드를 실행하는 것이다.
// 스트링을 반환한다고 치면 아래처럼 정의할 수 있다.
let myName : String = {
    //myName으로 들어간다.
    return "정대리"
}()
print(myName)


// closer 정의
//let myRealName : (String) -> String 스트링으로 받아서 스트링으로 반환한다.
// (String) -> String, 매개변수를 가지면서 반환값을 가진다면 아래처럼 하면 된다.
let myRealName : (String) -> String = { (name : String) -> String in
    return "개발하는 \(name)"
}

myRealName("쩡대리")


//반환없이 사용할 때는 Void를 사용한다.
let myRealNameLogic : (String) -> Void = { (name : String) in
    print("개발하는 \(name)")
}

myRealNameLogic("쩡대리 호로로로로롤")


