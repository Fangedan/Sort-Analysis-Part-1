var newString = [String]();

while let line = readLine()
{
    if(line.count == 0)
    {
        break;
    }
    newString.append(line)
}

func swap(integers: inout [String], firstIndex:Int, secondIndex:Int)
{ 
    let store = integers[secondIndex]
    integers[secondIndex] = integers[firstIndex]
    integers[firstIndex] = store
}

var strings = newString

var passes = 0;
var totalSwaps = 0;

print("Pass: \(passes), Swaps: 0/\(totalSwaps), Array: \(strings)")

for i in 1..<strings.count
{
    var swaps = 0
    var j = i;

    while j > 0 && strings[j] < strings[j - 1]
    {
        swap(integers: &strings, firstIndex: j - 1, secondIndex: j)
        j -= 1
        swaps += 1
        totalSwaps += 1;
    }
    passes += 1;
}
print(strings)
