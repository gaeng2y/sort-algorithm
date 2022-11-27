import UIKit

var nums = Array(Set([1,2,3,4,5,3452,7,241,2,4,5,1,3,3,12,132,45,68,46,5734,23125,367,632,67863,26,47,32,46,52,64,21,5364,21,5,3,15,6,21,567,321,5,67,5621,5,64,21,4654,21,98,654,65,7654,7654,543,45676545,6765,451,3762722,6,26,234,5342,523,51,5,24,7846,34523,15,263,958467536,235]
))

func selectSort(_ array: inout [Int]) {
    for i in 0..<array.count {
        var min = array[i]
        var location = i
        for j in i+1..<array.count {
            if min > array[j] {
                min = array[j]
                location = j
            }
        }
        
        if i != location {
            array.swapAt(i, location)
        }
    }
}

selectSort(&nums)
