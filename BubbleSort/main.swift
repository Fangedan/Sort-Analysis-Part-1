var newString = [String]();

while let line = readLine() {
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

var integers = newString

var passes = 0;
var totalSwaps = 0;
var sort = true;

print("Pass: \(passes), Swaps: 0/\(totalSwaps), Array: \(integers)")

while sort == true
{
    var swaps = 0
    sort = false
    for i in 0..<integers.count-1
    {
        if(integers[i] > integers[i+1])
        {
            sort = true
            swaps += 1
            totalSwaps += 1
            swap(integers:&integers, firstIndex:i, secondIndex:i+1)
        }
    }
    passes += 1
}
print(integers)
