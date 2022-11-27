import UIKit

func bubbleSort(_ array: inout [Int]) {
    for index1 in 0..<(array.count - 1) {                // 스캔 작업 반복
        var isSwap = false
        // 스캔 작업(인접 인덱스 비교 및 swap 반복) : (탐색하려는 요소의 갯수) - 1 => 탐색하려는 요소의 갯수는 스캔 횟수에 따라 차감됨(스캔 횟수만큼 정렬되어 있을테니)
        for index2 in 0..<((array.count - index1) - 1) {
            if array[index2] > array[index2 + 1] {
               array.swapAt(index2, (index2 + 1))
                isSwap = true
            }
        }
        if isSwap == false { return }
    }
}

var nums = Array(Set([1,2,3,4,5,3452,7,241,2,4,5,1,3,3,12,132,45,68,46,5734,23125,367,632,67863,26,47,32,46,52,64,21,5364,21,5,3,15,6,21,567,321,5,67,5621,5,64,21,4654,21]
))

bubbleSort(&nums)
