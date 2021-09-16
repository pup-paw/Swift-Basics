/*인스턴스 생성과 소멸*/

//이니셜라이저와 디이니셜라이저
//init, deinit

import Swift

//MARK: - 프로퍼티 기본값

//스위프트의 모든 인스턴스는 초기화와 동시에
//모든 프로퍼티에 유효한 값이 할당되어 있어야 함
//프로퍼티에 미리 기본값을 할당해두면
//인스턴스가 생성됨과 동시에 초기값을 지니게 됨

class PersonA {
    //모든 저장 프로퍼티에 기본값 할당
    var name: String = "unkown"
    var age: Int = 0
    var nickName: String = "nick"
}

let jason: PersonA = PersonA()
jason.name = "jason"
jason.age = 30
jason.nickName = "j"

//MARK: - 이니셜라이저

//프로퍼티 기본값을 지정하기 어려운 경우에는
//이니셜라이저를 통해
//인스턴스가 가져야 할 초기값을 전달할 수 있음

class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    //이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let haha: PersonB = PersonB(name: "hana", age: 20, nickName: "하나")

//let haha: PersonB = PersonB(name: "hana", age: 20, nickName: "")

//MARK: 프로퍼티의 초기값이 꼭 필요 없을 때
//옵셔널을 사용!

class PersonC {
    var name: String
    var age: Int
    var nickName : String?
    
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
