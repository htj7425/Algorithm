print(readLine()!.split(separator: " ").map{ Int(String($0.reversed()))! }.max()!)
