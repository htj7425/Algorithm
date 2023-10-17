func starMaker(_ x_start: Int, _ x_end: Int, _ y_start: Int, _ y_end: Int) {
    if x_end - x_start <= 1{
        return
    } else {
        let x1 = x_start + (x_end - x_start)/3
        let x2 = x_start + (x_end - x_start)/3*2
        let y1 = y_start + (y_end - y_start)/3
        let y2 = y_start + (y_end - y_start)/3*2
        
        for i in x1..<x2 {
            for j in y1..<y2{
                A[i][j] = " "
            }
        }
        
        starMaker(x_start, x1, y_start, y1)
        starMaker(x_start, x1, y1, y2)
        starMaker(x_start, x1, y2, y_end)
        
        
        starMaker(x1, x2, y_start, y1)
        starMaker(x1, x2, y1, y2)
        starMaker(x1, x2, y2, y_end)
        
        
        starMaker(x2, x_end, y_start, y1)
        starMaker(x2, x_end, y1, y2)
        starMaker(x2, x_end, y2, y_end)
    }
}

let n = Int(readLine()!)!
var A = Array(repeating: Array(repeating: "*", count: n), count: n)
starMaker(0, n, 0, n)

var answer: String = ""
for i in A {
    answer += i.joined() + "\n"
}

print(answer)