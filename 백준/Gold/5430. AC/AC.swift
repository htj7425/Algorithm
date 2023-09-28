// 테스트 케이스의 개수 T를 바로 Int(readLine()!)!으로 받아줌
for _ in 1...Int(readLine()!)! {
    // 수행할 함수
    let p = Array(readLine()!)

    // 배열에 들어있는 개수 n
    let n = Int(readLine()!)!

    let xArray = readLine()!.dropFirst().dropLast().split(separator: ",").map{ Int(String($0))! }
    
    var head = 0, tail = n-1

    var errorCheck = false
    var reverseCheck = false


    for i in p {
        switch i {
        case "R":
            reverseCheck = !reverseCheck
        default:
            if tail < head {
                errorCheck = true
                break
            }
            if reverseCheck {
                tail -= 1
            } else {
                head += 1
            }
        }
        if errorCheck {
            break
        }
    }


    if errorCheck{
        print("error")
    } else if head > tail {
        print("[]")
    }
    else{
        if !reverseCheck {
            print("[",terminator: "")
            while (tail >= head) {
                print(xArray[head],terminator: "")
                if tail != head {
                    print(",",terminator: "")
                }
                head += 1
            }
            print("]")
        } else{
            print("[",terminator: "")
            while (tail >= head) {
                print(xArray[tail],terminator: "")
                if tail != head {
                    print(",",terminator: "")
                }
                tail -= 1
            }
            print("]")
        }
    }
}