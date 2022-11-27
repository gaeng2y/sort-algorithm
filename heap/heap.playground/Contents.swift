import UIKit

var nums = Array(Set([1,2,3,4,5,3452,7,241,2,4,5,1,3,3,12,132,45,68,46,5734,23125,367,632,67863,26,47,32,46,52,64,21,5364,21,5,3,15,6,21,567,321,5,67,5621,5,64,21,4654,21,98,654,65,7654,7654,543,45676545,6765,451,3762722,6,26,234,5342,523,51,5,24,7846,34523,15,263,958467536,235]
))

func myMaxHeapSort(_ list: [Int], reversed: Bool = false) -> [Int]{
    var tempList = list
    var result: [Int] = []
    
    for i in stride(from: list.count-1, to:-1, by: -1){
        if i == 0 {
            guard let last = tempList.popLast() else { fatalError() }
            result.append(last)
        } else {
            tempList = makeMaxHeap(tempList)
            let temp = tempList[0]
            tempList[0] = tempList[i]
            tempList[i] = temp
            guard let last = tempList.popLast() else { fatalError() }
            result.append(last)
        }
    }
    if reversed == false {
        result.reverse()
        return result
    } else {
        return result
    }
}

func makeMaxHeap(_ list: [Int]) -> [Int]{
    var result = list
    
    for i in 1..<list.count{
        var childNode = i
        repeat{
            let root: Int = (childNode - 1) / 2
            if result[root] < result[childNode]{
                let temp = result[childNode]
                result[childNode] = result[root]
                result[root] = temp
            }
            childNode = root
        } while (childNode != 0)
    }
    
    return result
}

myMaxHeapSort(nums)
