import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result = Array(repeating: 0, count: photo.count)
    
    var yearningIndex = 0
    var yearningDict = name.reduce(into: [String:Int]()) {
        $0[$1, default: 0] += yearning[yearningIndex]
        yearningIndex += 1
    }
        
    for i in 0..<photo.count {
        for j in 0..<photo[i].count {
            if let yearn = yearningDict[photo[i][j]] {
                result[i] += yearn   
            }
        }
    }
    return result
}