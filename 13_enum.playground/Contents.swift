/*열거형*/

import Swift

//MARK: - 정의

//enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의함
//각 case는 소문자 카멜케이스로 정의함
//각 case는 그 자체가 고유의 값임

//enum 이름 {
//    case 이름1
//    case 이름2
//    case 이름3, 이름4, 이름5
//    ...
//}

//MARK: 열거형 사용

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon
//var day = Weekday.mon //오류 (처음에는 타입 명시 필요)
day = .tue

print(day)

switch day {
case .mon, .tue, .wed, .thu:
    print("평일입니다")
case Weekday.fri:
    print("불금 파티!!")
case .sat, .sun:
    print("신나는 주말!!")
}

//MARK: - 원시값

//C언어의 enum처럼 정수값을 가질 수도 있음
//rawValue를 사용하면 됨
//case별로 각각 다른 값을 가져야 함

enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach //자동으로 1씩 증가하기 때문에 2의 값을 가짐
//    case mango = 0 //오류
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

//정수 타입 뿐만 아니라
//Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있음

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university //rawValue를 설정하지 않으면 case의 이름을 가져옴
}

print("School.middle.rawValue == \(School.middle.rawValue)")

print("School.university.rawValue == \(School.university.rawValue)")


//MARK: 원시값을 통한 초기화

//rawValue를 통해 초기화 할 수 있음
//rawValue가 case에 해당하지 않을 수 있으므로
//rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입임

let apple: Fruit
