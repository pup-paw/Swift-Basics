/*컬렉션 타입*/
/*Array, Dictionary, Set*/

import Swift

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

//MARK: - Array (멤버가 순서를 가진 리스트 형태의 컬렉션)

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

//MARK: - Dictionary ('키'와 '값'의 쌍으로 이루어진 컬렉션)

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

//MARK: - Set (중복되지 않는 멤버가 순서없이 존재하는 컬렉션)

//빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

integerSet
integerSet.contains(1)
integerSet.contains(2)

integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)
//정렬
let sortedUnion: [Int] = union.sorted()
//교집합
let intersection: Set<Int> = setA.intersection(setB)
//차집합
let subtracting: Set<Int> = setA.subtracting(setB)
