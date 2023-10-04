var series = 0
var count = 0
let n = Int(readLine()!)!
let destory = "666"
while count < n {
    let temp = Array(String(series))
    if temp.count >= 3 {
        for i in 0...temp.count - 3 {
            if temp[i] == "6" && temp[i+1] == "6" && temp[i+2] == "6" {
                count += 1
                break
            }
        }
    }
    series += 1
}

print(series - 1)