import UIKit

//함수 매개변수 이름

func myFunction(name: String) -> String{
    return "안녕하세요! \(name)입니다."
}

// 함수, 메소드를 호출한다. call
myFunction(name: "정대리")





//이름 바꾸고 싶을 때 name을 다른 걸로 (with) 변경하면 된다.
func myFunctionSecond(with name: String) -> String{
    return "안녕하세요! \(name)입니다."
}

myFunctionSecond(with: "호롤롤로")





//매개변수 이름도 넣기 귀찮다... 호출할때 넣기 귀찮을 때는 _를 넣자.
func myFunctionThird(_ name: String) -> String{
    return "안녕하세요! \(name)입니다."
}

myFunctionThird("하하호호호")
