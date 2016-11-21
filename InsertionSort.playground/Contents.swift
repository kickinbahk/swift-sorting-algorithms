let numberList: [Int] = [8, 2, 10, 9, 11, 1, 7, 3, 4]

extension Array where Element: Comparable {
  func insertionSort() -> Array<Element> {
    var output: Array<Element> = self
    
    for primaryIndex in 0..<output.count {
      let key = output[primaryIndex]
      var secondaryIndex = primaryIndex
      
      while secondaryIndex > -1 {
        if key < output[secondaryIndex] {
          output.remove(at: secondaryIndex + 1)
          output.insert(key, at: secondaryIndex)
        }
        secondaryIndex -= 1
      }
    }
    return output
  }
}

var results = numberList.insertionSort()

print(results)

