import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var count = 0
    var sectionIndex = 0
    for i in section {
        if sectionIndex < i {
            sectionIndex = i + (m - 1)
            count += 1
        }
    }
    
    return count
}