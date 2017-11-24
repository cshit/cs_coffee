{expect} = require '../../test-helper'
{selectionSort} = require '../../../src/algorithms/sorting/selection'

describe 'Selection Sort', ->
  sampleArray = [6, 1, 8, 3, 9, 2 ,4]

  it 'sorts array in n^2 time complexity', ->
    expect(selectionSort(sampleArray).equals([1, 2, 3, 4, 6, 8, 9])).to.be.true

  it 'equals returns false when comparing incorrectly', ->
    expect(selectionSort(sampleArray).equals([10, 2, 3, 1000, 6, 8, 9])).to.be.false
 
