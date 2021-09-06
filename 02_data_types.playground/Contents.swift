import UIKit

//Swift의 기본 데이터 타입
//Bool, Int, UInt, Float, Double, Character, String

//Bool
var someBool: Bool = true
someBool = false

//Int
var someInt: Int = -100

//UInt -> 부호가 없는 정수 (양의 정수)
var someUInt: UInt = 100
//someUInt = someInt //오류

//Float
var someFloat: Float = 3.14
someFloat = 3 //가능

//Double
var someDouble: Double = 3.14
someDouble = 3 //가능
//someDouble = someFloat //오류

//Character
var someCharacer: Character = "❤️"
someCharacer = "💜"
someCharacer = "가"
someCharacer = "A"
//someCharacer = "하하하" //characer에 string -> 오류
print(someCharacer)

//String
var someString: String = "하하하 😃 "
someString = someString + "웃으면 복이 와요"
print(someString)
//someString = someCharacer //오류
