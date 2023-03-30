import UIKit
// 다크 모드 여부
var isDarkMode : Bool = true

//if (isDarkMode == true) {
//    print("다크모드입니다.")
//}else{
//    print("다크모드가 아닙니다.")
//}

//isDarkMode == false
//if isDarkMode {
//    print("다크모드가 아닙니다.")
//}else{
//    print("다크모드입니다.")
//}

var title : String = isDarkMode == true ?  "다크모드입니다" : "다크모드가 아닙니다."
print("title: \(title)")

var title2 : String = isDarkMode ?  "다크모드입니다" : "다크모드가 아닙니다."
print("title2 \(title2)")

var title3 : String = !isDarkMode ?  "다크모드입니다" : "다크모드가 아닙니다."
print("title3 \(title3)")

