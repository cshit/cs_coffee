# [2,3,4,5,1]
# i = 3
# value = 1

# [3,5,9,10,6,8]
# insert(sampleArray2, 3, 6)

insert = (targetArray, rightIndex, value) ->

  i = rightIndex
  while i >= 0 && targetArray[i] > value
    targetArray[i+1] = targetArray[i]
    i -= 1


  targetArray[i+1] = value
  targetArray

exports.insert = insert
