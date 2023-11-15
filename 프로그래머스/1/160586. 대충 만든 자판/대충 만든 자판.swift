import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var result = [Int]()
    
    var keyDict = Dictionary<Character,Int>()
    
    for key in keymap {
        var index = 0
        for alphabet in key {
            index += 1
            if let value = keyDict[alphabet] {
                if index < value {
                    keyDict[alphabet] = index
                }   
            } else {
                keyDict[alphabet] = index
            }
        }
    }
    
    var count = 0
    var isContain = true
    for word in targets {
        for alphabet in word {
            if isContain {
                if let value = keyDict[alphabet] {
                    count += value
                } else {
                    isContain = false
                }
            }
        }
        if isContain {
            result.append(count)
        } else {
            result.append(-1)
        }
        count = 0
        isContain = true
    }
    
    return result
}