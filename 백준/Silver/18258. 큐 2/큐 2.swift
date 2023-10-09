import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
        index = 0
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        
        return buffer.withUnsafeBufferPointer { $0[index] }
    }
    
    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45{ isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        
        return sum * (isPositive ? 1:-1)
    }
    
    @inline(__always) func readString() -> Int {
        var str = 0
        var now = read()
        
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        
        while now != 10
                && now != 32 && now != 0 {
            str += Int(now)
            now = read()
        }
        
        return str
    }
}

let file = FileIO()

let n = file.readInt()

var answer = ""
var queue = [Int]()
var start = 0
var end = -1
for _ in 1...n {
    let command = file.readString()
    switch command {
    case 335: // pop
        if start > end {
            answer += "-1\n"
        } else {
            answer += "\(queue[start])\n"
            start += 1
        }
    case 443: // size
        answer += "\(end-start+1)\n"
    case 559: // empty
        if start > end {
            answer += "1\n"
        } else {
            answer += "0\n"
        }
    case 553: // front
        if start > end {
            answer += "-1\n"
        } else {
            answer += "\(queue[start])\n"
        }
    case 401: // back
        if start > end {
            answer += "-1\n"
        } else {
            answer += "\(queue[end])\n"
        }
    default:
        queue.append(file.readInt())
        end += 1
    }
}

print(answer)
