bSearchIteratively = (targetArray, targetNumber) ->
  min = 0;
  max = targetArray.length - 1;
  mid = null;

  while max >= min
    mid = Math.floor((min + max) / 2)

    if targetArray[mid] == targetNumber
      return mid
    else if targetArray[mid] > targetNumber
      max = mid - 1
    else
      min = mid + 1

  return false


module.exports.bSearchIteratively = bSearchIteratively;
