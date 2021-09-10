/*
 optional이 필요한 이유
 > nil의 가능성을 명시적으로 표현
    1. nil의 가능성을 문서화 하지 않아도 코드만으로 충분히 표현 가능
        -> 문서/주석 작성 시간 절약
    2. 전달받은 값이 옵셔널이 아니라면 nil체크를 하지 않아도 안심하고 사용 가능
        -> 효율적인 코딩
        -> 예외 상황을 최소화하는 안전한 코딩
 */

import Swift

//someOptionalParam can be nil
func someFunction(someOptionalParam: Int?) {
    // ...
}
//somFunction must not be nil
func someFunction(someParam: Int) {
    // ...
}

someFunction(someOptionalParam: nil)
//someFunction(someParam: nil) //오류

//Opetional = enum + general
//enum Optional<Wrapped> : ExpressibleByNilLiteral {
//    case none
//    case some(Wrapped)
//}

let optionalValue1: Optional<Int> = nil
let optionalValue2: Int? = nil

//Implicitly Unwrapped Optional (암시적 추출 옵셔널)
var optionalValue3: Int! = 100
switch optionalValue3 {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}
//기존 변수처럼 사용 가능
optionalValue3 = optionalValue3 + 1
//nil 할당 가능
optionalValue3 = nil
//잘못된 접근으로 인한 런타임 오류 발생
//optionalValue = optionalValue + 1


//Optional
var optionalValue4: Int? = 100
switch optionalValue4 {
case .none:
    print("This Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}
//nil 할당 가능
optionalValue4 = nil
//기본 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
//optionalValue4 = optionalValue4 + 1
