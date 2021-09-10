import Swift

let someInteger = 100

//MARK: - if-else

//if condition {
//    statements
//}   else if codition {
//    statements
//}   else {
//    statements
//}

if someInteger < 100 {
    print("100 미만")
} else if someInteger > 100 {
    print("100 초과")
} else {
    print("100")
}

//스위프트의 조건에는 항상 Bool 타입이 들어와야 합니다
//someInteger은 Bool 타입이 아닌 Int 타입이기 때문에
//컴파일 오류가 발생합니다
//if someInteger { }

//MARK: - switch

//switch value {
//case pattern:
//    code
//default:
//    code
//}

//범위 연선자를 활용하면 더욱 쉽고 유용함
switch someInteger {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("unknown")
}

//정수 외의 대부분의 기본 타입을 사용할 수 있음
switch "pupaw" {
case "jake":
    print("jake")
    //기본적으로 brake가 있는 것 처럼 움직임
    //brake가 없길 바라면 fallthrough를 써줘야 함
case "mina":
    print("mina")
case "pupaw":
    print("pupaw!!")
default:
    print("unknown")
}
