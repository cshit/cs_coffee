findLowestIndex = (targetArray, startIndex) ->
  lowestValue = targetArray[startIndex]
  lowestIndex = startIndex

  i = startIndex+1

  while i < targetArray.length
    if targetArray[i] < lowestValue
      lowestValue = targetArray[i]
      lowestIndex = i
    i += 1

  return lowestIndex

module.exports.findLowestIndex = findLowestIndex
