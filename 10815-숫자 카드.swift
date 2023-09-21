
// 이진 탐색 풀이
//import Foundation

//let n = Int(readLine()!)!
//let nArr = readLine()!.components(separatedBy: " ").map{ Int($0)! }.sorted()
//
//let m = Int(readLine()!)!
//let mArr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//
//func binarySearch(number: Int) -> Int {
//    var start 5= 0
//    var end = n-1
//
//    while(start <= end){
//        var middle = (start+end)/2
//
//        if nArr[middle] == number {
//            return 1
//        } else if nArr[middle] > number {
//            end = middle - 1
//        } else {
//            start = middle + 1
//        }
//    }
//    return 0
//}
//
//var ans = ""
//for i in mArr {
//    ans += "\(binarySearch(number: i)) "
//}
//
//print(ans)


// Swift: "Set", "contains" 풀이
// Set은 딕셔너리와 같이 해시로 구현되어 있어, 해시충돌이 일어나지 않는 한
// 시간 복잡도가 상수로, O(1) 만큼만 걸림

let n = Int(readLine()!)!
let nArr = Set(readLine()!.split(separator: " ").map{ Int($0)! })

let m = Int(readLine()!)!
let mArr = readLine()!.split(separator: " ").map{ Int($0)! }


var ansArr = [Int]()
for i in mArr {
    nArr.contains(i) ? ansArr.append(1) : ansArr.append(0)
}

print(ansArr.map{ String($0) }.joined(separator: " "))
