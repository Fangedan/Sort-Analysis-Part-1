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

for i in 0 ..< strings.count - 1
{
    var small = i;
    for j in i + 1 ..< strings.count
    {
        if(strings[j] < strings[small])
        {
            small = j
        }
    }
    swap(integers: &strings, firstIndex: i, secondIndex: small)
    passes += 1;
    totalSwaps += 1;
}
print(strings)
