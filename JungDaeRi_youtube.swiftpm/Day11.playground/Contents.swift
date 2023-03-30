import UIKit

//매개변수로서 클로저 closer

//() -> Void
// 위에 거 의미가 아래거 의미랑 같다.
//func completion(){
//
//}


// 클로저는 그냥 메소드라고 생각하면 된다.
// completion이라는 클로저를 매개변수로 가지는
func sayHi (completion: ()->Void) {
    print("sayHi() called")
    sleep(2) //2초 잠깐 멈추기
    //completion 이라는 클로저가 실행된다.
    completion()
}
//메소드 호출부에서 이벤트 종료를 알 수 있다.
sayHi(completion: {
        print("2초가 지났다.")
})

sayHi(){
    print("2초가 지났다. 1")
}

sayHi{
    print("2초가 지났다. 2")
}

sayHi{
    print("2초가 지났다. 3")
}


//그렇다면 얘는 뭐지? 할 수 있다. 이것도 같은 의미이다.
//(String) -> Void
//func completion (userInput: String){
//
//}
//매개변수로서 데이터를 반환하는 클로저가 된다
func sayHiWithName (completion: (String)->Void){
    print ("sayHiWithName() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 빡코딩중인가요?!")
}


sayHiWithName(completion: { (comment: String) in
    print("2초 뒤에 그가 말했다.  comment: ", comment)
})
//코드를 줄여보자.
sayHiWithName(completion: { comment in
    print("2초 뒤에 그가 말했다.  comment: ", comment)
})

sayHiWithName{ comment in
    print("2초 뒤에 그가 말했다.  comment: ", comment)
}

sayHiWithName{
    print("2초 뒤에 그가 말했다.  comment: ", $0)
}

//(String, String)->Void
//func completion(first: String, second: String){
//
//}

//매개변수로서 데이터를 여러개를 반환하는 클로저가 된다
func sayHiWithFullName (completion: (String, String)->Void){
    print ("sayHiWithName() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion("빡코딩", "호롤롤로")
}


sayHiWithFullName{ first, second in
    print("첫번째 : \(first), 두번째 \(second)")
}
//아래처럼 해도 된다.
//sayHiWithFullName {
//    print ("첫번째 : \($0), 두번째: \($1)")
//}

// 이 방법도 있다.
//sayHiWithFullName{ _, second in
//    print(" 두번째 \(second)")
//}



func sayHiOptional (completion: (() -> Void)? = nil) {
    print ("sayHiOptional() called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion?()
}

//sayHiOptional {
//    <#code#>
//}

sayHiOptional()

sayHiOptional(completion: {
    print("2초가 지났다.!!")
})


// (Int) -> String
//func transform(number: Int) -> String{
//    return "숫자 : \(number)"
//}

//collection
var myNumbers : [Int] = [0,1,2,3,4,5]

var tranformNumbers = myNumbers.map { aNumber in
    return "숫자 : \(aNumber)"
}

var tranformNumbers2 = myNumbers.map { (aNumber: Int) -> String in
    return "숫자 : \(aNumber)"
}

var transformNumbers3 = myNumbers.map {
    return "숫자 : \($0)"
}


//이해가 잘 되지 않기 때문에 여러번 돌려보고 다음으로 넘어가자.
