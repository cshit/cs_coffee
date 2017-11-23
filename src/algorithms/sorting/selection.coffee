{findLowestIndex} = require '../../ds/array/findLowestElementsIndex'
{swap} = require '../../ds/array/swap'

selectionSort = (targetArray) ->

  i = 0
  while i < targetArray.length
    lowestIndex = findLowestIndex(targetArray, i)
    swap(targetArray, i, lowestIndex)

    i += 1

  return targetArray


exports.selectionSort = selectionSort
