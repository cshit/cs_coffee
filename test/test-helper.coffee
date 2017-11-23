module.exports = { expect: require('chai').expect }


# :::Comparing Arrays:::
# Warn if overriding existing method
console.warn("Overriding Array.prototype.equals.") if Array.prototype.equals

Array.prototype.equals = (array) ->
  # if the other array is a falsy value, return
  return false if !array

  # compare lengths - can save a lot of time
  return false if this.length != array.length

  i = 0
  l = this.length
  while  i < l
      # Check if we have nested arrays
    if this[i] instanceof Array && array[i] instanceof Array
      # recurse into the nested arrays
      if !this[i].equals(array[i])
        return false
      else if this[i] != array[i]
        return false

    i += 1

  return true

# Hide method from for-in loops
Object.defineProperty(Array.prototype, "equals", {enumerable: false})
