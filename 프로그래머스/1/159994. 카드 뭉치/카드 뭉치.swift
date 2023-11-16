import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1Index = 0
    var cards2Index = 0
    
    for card in goal {
        if cards1Index < cards1.count && cards1[cards1Index] == card {
            cards1Index += 1
        } else if cards2Index < cards2.count && cards2[cards2Index] == card {
            cards2Index += 1
        }
    }
    
    if cards1Index + cards2Index != goal.count{
        return "No"
    }
    
    return "Yes"
}