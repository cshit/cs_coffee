{insert}  =require '../../ds/array/instert'

insertionSort = (targetArray) ->
  i = 0
  while i < targetArray.length - 1
    insert(targetArray, i, targetArray[i+1])
    i += 1

  targetArray

exports.insertionSort = insertionSort
