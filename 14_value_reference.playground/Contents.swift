//MARK: - Class
//전통적인 OPP 관점에서의 클래스
//단일상속
//(인스턴스/타입) 메서드
//(인스턴스/타입) 프로퍼티
//참조 타입
//Apple 프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성

//MARK: - Struct
//C언어 등의 구조체보다 다양한 기능
//상속 불가
//(인스턴스/타입) 메서드
//(인스턴스/타입) 프로퍼티
//값 타입
//Swift의 대부분의 큰 뼈대는 모두 구조체로 구성

//MARK: - Enum
//다른 언어의 열거형과는 많이 다른 존재
//상속 불가
//(인스턴스/타입) 메서드
//(인스턴스/타입) 연산 프로퍼티
//값 타입
//Enumeration
//유사한 종류의 여러 값을 유의미한 이름으로 한 곳에 모아 정의
//ex) 요일, 상태값, 월(Month) 등
//열거형 자체가 하나의 데이터 타입
//열거형의 case 하나하나 전부 하나의 유의미한 값으로 취급
//선언 키워드 - enum

//MARK: - Value vs Reference
//Value : 데이터를 전달할 때 값을 복사하여 전달
//Reference : 데이터를 전달할 때 값의 메모리 위치를 전달

/*클래스, 구조체/열거형 비교*/

import Swift

//Mark: - Class vs Struct/Enum

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)")
print("second struct instance property : \(secondStructInstance.property)")


let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property)")
print("second class reference property : \(secondClassReference.property)")
