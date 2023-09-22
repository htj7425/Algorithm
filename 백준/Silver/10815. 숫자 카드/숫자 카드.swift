import Foundation

let n = Int(readLine()!)!
let nArr = readLine()!.components(separatedBy: " ").map{ Int($0)! }.sorted()

let m = Int(readLine()!)!
let mArr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

func binarySearch(number: Int) -> Int {
    var start = 0
    var end = n-1
    
    while(start <= end){
        var middle = (start+end)/2
        
        if nArr[middle] == number {
            return 1
        } else if nArr[middle] > number {
            end = middle - 1
        } else {
            start = middle + 1
        }
    }
    return 0
}

var ans = ""
for i in mArr {
    ans += "\(binarySearch(number: i)) "
}

print(ans)
