let n = Int(readLine()!)!
let nArr = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()

let m = Int(readLine()!)!
let mArr = readLine()!.split(separator: " ").map{ Int($0)! }

let binarySearchClosure = {(num: Int) -> Int in
    var start = 0
    var end = n - 1
    
    // 가운데 인덱스를 구해서 해당 요소가 답인지 체크
    // 답보다 가운데가 작으면 0~인덱스-1 / 크면 인덱스+1~n
    // 반복 조건 start <= end
    // 찾으면 1 리턴
    // 마지막 요소까지 검사했는데 없으면 0리턴
    
    while(start <= end){
        var middle = (start + end)/2
        
        if nArr[middle] == num {
            return 1
        }
        else if nArr[middle] > num {
            end = middle - 1
        }
        else if nArr[middle] < num {
            start = middle + 1
        }
    }

    return 0
}

for i in mArr {
    print(binarySearchClosure(i))
}



