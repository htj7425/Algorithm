import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    var result = [-1, -1]
    var park2Dimension = park.reduce(into: [[String]]()) {
        $0.append($1.map{String($0)})
    }
    var h = park2Dimension.count
    var w = park2Dimension[0].count
    
    for i in 0..<park.count {
        for j in 0..<park[0].count {
            if park2Dimension[i][j] == "S" {
                result[0] = i
                result[1] = j
                break
            }
        }
        if result[0] != -1 {
            break
        }
    }
    
    routes.forEach{
        var route = $0.split(separator: " ").map{String($0)}
        var r = Int(route[1])!
        switch route[0] {    
            case "W": 
                if result[1] - r >= 0 {
                    var xCheck = true
                    for i in 1...r {
                        if park2Dimension[result[0]][result[1]-i] == "X"{
                            xCheck = false
                        }
                    }
                    if xCheck {
                        result[1] -= r
                    }
                }
            case "E": 
                if result[1] + r < w {
                    var xCheck = true
                    for i in 1...r {
                        if park2Dimension[result[0]][result[1]+i] == "X" {
                            xCheck = false
                        }
                    }
                    if xCheck {
                        result[1] += r
                    }
                }
            case "N": 
                if result[0] - r >= 0 {
                    var xCheck = true
                    for i in 1...r {
                        if park2Dimension[result[0] - i][result[1]] == "X" {
                            xCheck = false
                        }
                    }
                    if xCheck {
                        result[0] -= r
                    }
                }
            case "S": 
                if result[0] + r < h {
                    var xCheck = true
                    for i in 1...r {
                        if park2Dimension[result[0] + i][result[1]] == "X" {
                            xCheck = false
                        }
                    }
                    if xCheck {
                        result[0] += r
                    }
                }
            default: break
        }
    }
    
    
    return result
}