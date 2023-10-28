let abc = readLine()!.split(separator: " ").map{Int($0)!}
var (A, B, C) = (abc[0], abc[1], abc[2])
print((A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)