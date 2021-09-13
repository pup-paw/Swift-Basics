import Swift

//MARK: - Optional Binding
//옵셔널의 값을 꺼내오는 방법 중 하나
//nil 체크 + 안전한 값 추출

func printName(_ name: String) {
    print(name)
}

var myName: String? = nil

//printName(myName)
//전달되는 값의 타입이 다르기 때문에 컴파일 오류 발생

if let name: String = myName {
    printName(name) //name 상수는 if-let 구문 내에서만 사용 가능
} else {
    print("myName == nil")
}

myName = "pupaw"
var yourName: String? = nil

//yourName이 nil이기 때문에 실행되지 않음
if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}

yourName = "haha"

if let name = myName, let friend = yourName {
    print("\(name) and \(friend)")
}


//MARK: - Force Unwrapptin
//옵셔널의 값을 강제로 추출

printName(myName!)

myName = nil

//강제 추출 시 값이 없으므로 런타임 오류 발생
//printName(myName!)

var hisName: String! = nil
//nil 값이 전달되기 때문에 런타임 오류 발생
//printName(hisName)
