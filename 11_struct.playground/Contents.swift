/*구조체*/

import Swift

//MARK: - 정의

//struct 이름 {
//    /*구현부*/
//}

//MARK: 프로퍼티 및 메서드

struct Sample {
    var mutableProperty: Int = 100 //가변 프로퍼티
    let immutableProperty: Int = 100 //불변 프로퍼티
    
    static var typeProperty: Int = 100 //타입 프로퍼티
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instance method")
    }
    
    //타입 메서드
    static func typeMethod() {
        print("type method")
    }
}

//MARK: 구조체 사용

//가변 인스턴스
var mutable: Sample = Sample()

mutable.mutableProperty = 200
//mutable.immutableProperty = 200

//불변 인스턴스
let immutable: Sample = Sample()

//immutable.mutableProperty = 200
//immutable.immutableProperty = 200

//타입 프로퍼티 및 메서드
Sample.typeProperty = 300
Sample.typeMethod()

//mutable.typeProperty = 400
//mutable.typeMethode()


//MARK: - 학생 구조체
struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("학생타입입니다")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다")
    }
}

Student.selfIntroduce()

var pupaw: Student = Student()
pupaw.name = "pupaw"
pupaw.class = "스위프트"
pupaw.selfIntroduce()

let jina: Student = Student()

//불변 인스턴스이므로 프로퍼티 값 변경 불가
//컴파일 오류 발생
//jina.name = "jina"
jina.selfIntroduce()
