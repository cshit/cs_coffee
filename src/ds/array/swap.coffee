swap = (targetArray, firstIndex, secondIndex) ->
  temp = targetArray[firstIndex]
  targetArray[firstIndex] = targetArray[secondIndex]
  targetArray[secondIndex] = temp

  targetArray

module.exports.swap = swap
