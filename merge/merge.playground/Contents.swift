import UIKit

var nums = Array(Set([1,2,3,4,5,3452,7,241,2,4,5,1,3,3,12,132,45,68,46,5734,23125,367,632,67863,26,47,32,46,52,64,21,5364,21,5,3,15,6,21,567,321,5,67,5621,5,64,21,4654,21,98,654,65,7654,7654,543,45676545,6765,451,3762722,6,26,234,5342,523,51,5,24,7846,34523,15,263,958467536,235]
))

func mergeSort(_ array: [Int]) -> [Int] {
    if array.count <= 1 { return array }
    let center = array.count / 2
    let left = Array(array[0..<center])
    let right = Array(array[center..<array.count])
    
    func merge(_ left: [Int],_ right: [Int]) -> [Int] {
        var left = left
        var right = right
        var result: [Int] = []
        
        while !left.isEmpty && !right.isEmpty {
            if left[0] < right[0] {
                result.append(left.removeFirst())
            } else {
                result.append(right.removeFirst())
            }
        }
        
        // 왼쪽 배열의 요소가 남은 경우
        if !left.isEmpty {
            result.append(contentsOf: left)
        }
        
        // 오른쪽 배열의 요소가 남은 경우
        if !right.isEmpty {
            result.append(contentsOf: right)
        }
        
        return result
    }
    
    return merge(mergeSort(left), mergeSort(right))
}

mergeSort(nums)

