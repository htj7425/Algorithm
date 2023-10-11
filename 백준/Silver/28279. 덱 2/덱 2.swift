
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

var frontStart = 0
var frontEnd = -1
var rearStart = 0
var rearEnd = -1
var frontDequeue = [Int]()
var rearDequeue = [Int]()

var answer = ""
for _ in 1...n {
    let command = file.readInt()
    switch command {
    case 1:
        frontDequeue.append(file.readInt())
        frontEnd += 1
    case 2:
        rearDequeue.append(file.readInt())
        rearEnd += 1
    case 3:
        if frontStart <= frontEnd {
            answer += "\(frontDequeue.removeLast())\n"
            frontEnd -= 1
        } else if rearStart <= rearEnd {
            answer += "\(rearDequeue[rearStart])\n"
            rearStart += 1
        } else {
            answer += "-1\n"
        }
    case 4:
        if rearStart <= rearEnd {
            answer += "\(rearDequeue.removeLast())\n"
            rearEnd -= 1
        } else if frontStart <= frontEnd {
            answer += "\(frontDequeue[frontStart])\n"
            frontStart += 1
        } else {
            answer += "-1\n"
        }
    case 5:
        answer += "\((frontEnd-frontStart+1)+(rearEnd-rearStart+1))\n"
    case 6:
        if (frontStart > frontEnd) && (rearStart > rearEnd) {
            answer += "1\n"
        } else {
            answer += "0\n"
        }
    case 7:
        if frontStart <= frontEnd {
            answer += "\(frontDequeue[frontEnd])\n"
        } else if rearStart <= rearEnd {
            answer += "\(rearDequeue[rearStart])\n"
        } else {
            answer += "-1\n"
        }
    case 8:
        if rearStart <= rearEnd {
            answer += "\(rearDequeue[rearEnd])\n"
        } else if frontStart <= frontEnd {
            answer += "\(frontDequeue[frontStart])\n"
        } else {
            answer += "-1\n"
        }
    default: break
    }
}

print(answer)

