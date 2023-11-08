import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var lux: Int = wallpaper[0].count
    var luy: Int = wallpaper.count
    var rdx: Int = 0
    var rdy: Int = 0
    
    var yIndex = 0
    var xIndex = 0
    for i in wallpaper { // y좌표
        for j in i { // x좌표
            if j == "#" {
                if yIndex < luy { luy = yIndex }
                if xIndex < lux { lux = xIndex }
                if yIndex > rdy { rdy = yIndex }
                if xIndex > rdx { rdx = xIndex }
            }
            xIndex += 1
        }
        yIndex += 1
        xIndex = 0
    }
    
    return [luy, lux, rdy+1, rdx+1]
}