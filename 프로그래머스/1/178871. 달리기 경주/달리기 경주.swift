import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var ranks = players
    
    var rankIndex = 0
    var playersDict = players.reduce(into: [String:Int]()) {
        $0[$1, default: 0] += rankIndex
        rankIndex += 1
    }
    
    callings.forEach {
        if let index = playersDict[$0] { // 호출된 선수 등수
            ranks.swapAt(index, index - 1)
            playersDict[ranks[index - 1]]! -= 1
            playersDict[ranks[index]]! += 1
        }
    }
    
    return ranks
}