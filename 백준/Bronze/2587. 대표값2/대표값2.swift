var array = [Int]()

for _ in 1...5{
    array.append(Int(readLine()!)!)
}

array = array.sorted()

print(array.reduce(0, +)/5)
print(array[2])
