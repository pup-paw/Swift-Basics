/*함수*/

import Swift

//MARK: - 함수의 선언

//MARK: 함수의 기본 형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//    return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}


//MARK: - 반환 값이 없는 함수
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
//    return
//}

func printMyName(name: String) -> Void {
    print(name)
}

//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) {
//    함수 구현부
//    return
//}

func printYourName(name: String) {
    print(name)
}


//MARK: 매개변수가 없는 함수
//func 함수이름() -> 반환타입 {
//    함수 구현부
//    return 반환값
//}

func maximumIntegerValue() -> Int {
    return Int.max
}


//MARK: 매개변수와 반환값이 없는 함수
//func 함수이름() -> Void {
//    함수구현부
//    return
//}

func hello() -> Void { print("hello") }

//func 함수이름() {
//    함수구현부
//    return
//}

func bye() { print("bye") }


//MARK: - 함수의 호출
sum(a: 3, b: 5)

printMyName(name: "pupaw")

printYourName(name: "yagom")

maximumIntegerValue()

hello()

bye()
