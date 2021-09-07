/*컬렉션 타입*/
/*Array, Dictionary, Set*/

import Swift

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

//MARK: - Array

//빈 Int Array 생성
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(100.1)

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count

//integers[0] //오류

//Array<Double>과 [Double]은 동일한 표현
//빈 Double Array 생성
var doubles: Array<Double> = [Double]()

//빈 String Array 생성
var Strings: [String] = [String]()

//빈 Character Array 생성
//[]는 새로운 빈 Array
var characeters: [Character] = []

//let을 사용하여 Array를 선언하면 불변 Array
let immutableArray = [1, 2, 3]

//immutableArray.append(4) //오류
//immutableArray.removeAll() //오류

//MARK: - Dictionary

//Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = "100"

anyDictionary

anyDictionary["someKey"] = "dictionary"
anyDictionary

anyDictionary.removeValue(forKey: "anotherKey")

anyDictionary["someKey"] = nil
anyDictionary

let emptyDictionary: [String: String] = [:]
let initailizedDictionary: [String: String] = ["name": "pupaw", "gender": "female"]

//emptyDictionary["key"] = "value" //오류

//let someValue: String = initailizedDictionary["name"] //오류


