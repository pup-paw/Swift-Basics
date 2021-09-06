/*Any, AnyObject, nil*/

import Swift

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

//MARK: - Any
var someAny: Any = 100
someAny = "어떤 타입도 수용 가능합니다."
someAny = 123.12

//let somDouble: Double = someAny //오류(any타입을 double타입에 넣을 수 없음)

//MARK: - AnyObject
class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

//someAnyObject = 123.12 //오류

//MARK: - nil
//someAny = nil //오류 (어떤 타입도 가능하지만 nil값은 들어갈 수 없음)
//someAnyObject = nil //오류 (어떤 타입도 가능하지만 nil값은 들어갈 수 없음)
