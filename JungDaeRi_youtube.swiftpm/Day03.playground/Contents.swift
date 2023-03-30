import UIKit
// enum 케이스 나누기
// 학교 : 초, 중, 고
// enum이 값을 가진 게 아니고 그냥 case를 가지고 있는 것이다.
enum School {
//    case elementary
//    case middle
//    case high
    //아래방법이 더 깔끔하다.
    case elementary, middle, high
}

let yourSchool = School.high
//print("yourSchool : \(yourSchool)")
//밑 방법으로 프린트할 수도 있다.
print("yourSchool: ", yourSchool)

enum Grade : Int {
    case first = 1
    case second = 2
}
// 밑에 let에 Int를 넣지 않은 것은
// 위에서 미리 Int라고 정의를 해두었기 때문이다.

//let yourGrade = Grade.second
//print("yourGrade : \(yourGrade)")

// 아래는 Grade가 가지고 있는 Int 값을 반환한다.
let yourGrade = Grade.second.rawValue
print("yourGrade : \(yourGrade)")

enum SchoolDetail {
    case elemantary (name : String)
    case middle (name : String)
    case high (name : String)
    
    //SchoolDetail이 가지고 있는 getName()이라는 함수 혹은 메소드
    func getName() -> String {
        switch self {
        case .elemantary(let name):
            return name
            
        //let을 앞에 써도 된다.
        case let .middle(name):
            return name
            
        case let .high(name):
            return name
        }
    }
}

//let yourMiddleSchoolName = SchoolDetail.middle(name : "정대리중학교")
//print("yourMiddleSchoolName : \(yourMiddleSchoolName)")

//중학교 의 값만 알고 싶을 때 getName()을 호출해준다.
let yourMiddleSchoolName = SchoolDetail.middle(name : "정대리중학교")
print("yourMiddleSchoolName : \(yourMiddleSchoolName.getName())")

