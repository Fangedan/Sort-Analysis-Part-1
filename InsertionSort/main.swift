import Foundation

var array = unsortedIntegers

var pass = 0
var swaptotal = 0
var store = 0
var swap = 0

func insertionSort<T:Comparable>(array: inout [T])
{
    for numplace in 0..<array.count
    {
        let value = array[numplace]
        var numbefore = numplace - 1
        while numbefore >= 0
        {
            swap = 0
            if array[numbefore] > value
            {
                array[numbefore+1] = array[numbefore]
                swaptotal += 1
                swap += 1
            }
            else
            {
                break
            }
            numbefore -= 1
            store += swap
        }
        array[numbefore+1] = value
        pass += 1
        print("Pass: \(pass-1), Swaps: \(store)/\(swaptotal), Array:",array)
        store = 0
    }
}

insertionSort(array: &array)
