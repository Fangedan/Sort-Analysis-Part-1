var pass = 0
var swaptotal = 0
var swaps = 0

func selectionSort(_ array: [Int]) {

    var arr = array                    // 2

    for numon in 0 ..< arr.count - 1 {     // 3

        var lowest = numon
        for y in numon + 1 ..< arr.count {   // 4
            if arr[y] < arr[lowest] {
                lowest = y
                swaps = 0
            }
        }

        if numon != lowest {               // 5
            arr.swapAt(numon, lowest)
            swaps += 1
        }
        swaptotal += 1
        pass += 1
        print("Pass: \(pass), Swaps: \(swaps)/\(swaptotal), Array: \(arr)")
    }
}

print("Pass: 0, Swaps: 0/0, Array: \(unsortedIntegers)")
selectionSort(unsortedIntegers)
