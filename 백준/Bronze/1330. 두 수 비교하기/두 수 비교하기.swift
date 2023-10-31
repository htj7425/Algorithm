let nums = readLine()!.split(separator: " ").map{ Int($0)! }

if nums[0] > nums[1] { print(">") }
else if nums[0] < nums[1] { print("<") }
else { print("==") }