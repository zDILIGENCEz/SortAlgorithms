


var array: [Int] = [1,3,5,4,2,3,4,5,688,7,456,8,4,4769,98,1]
var isEndSort: Bool = false

func bubleSort() {
    
    while (!isEndSort) {
        isEndSort = true
        for i in 1..<array.count {
            if array[i - 1] > array[i] {
                let add = array[i - 1]
                array[i - 1] = array[i]
                array[i] = add
                isEndSort = false
            }
        }
    }
    
}

print(array)
bubleSort()
print(array)
