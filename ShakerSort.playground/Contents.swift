

var array: [Int] = [5,4,3,2,124325,454,3,234,213,5,321,3,234,1,21,3,24,1,2]
var isEndSort: Bool = false

func shakerSort() {
    var start = 0
    var end = array.count - 1
        
    while !isEndSort {
        isEndSort = true
        start += 1
        
        if start > end {
            break
        }
        
        for i in start...end {
            if array[i - 1] > array[i] {
                let add = array[i - 1]
                array[i - 1] = array[i]
                array[i] = add
                isEndSort = false
            }
        }
        
        end -= 1
        for i in stride(from: end, through: start, by: -1) {
            if array[i] < array[i - 1] {
                let add = array[i - 1]
                array[i - 1] = array[i]
                array[i] = add
                isEndSort = false
            }
        }
    }
}
    

print(array)
shakerSort()
print(array)

