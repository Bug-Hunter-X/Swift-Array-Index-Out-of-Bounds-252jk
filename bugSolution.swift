let array = [1, 2, 3]
let index = 4
let element = array.indices.contains(index) ? array[index] : nil //Optional binding handles index out of bounds

if let safeElement = element {
    print("Element at index "
          + String(index)
          + ": "
          + String(safeElement))
} else {
    print("Index out of bounds")
}
//Alternative approach using guard
guard array.indices.contains(index) else {
    print("Index out of bounds")
    return
}
let safeElement = array[index]
print("Element at index "
      + String(index)
      + ": "
      + String(safeElement))