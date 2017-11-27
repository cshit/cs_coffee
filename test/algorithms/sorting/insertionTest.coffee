
{expect} = require '../../test-helper'
{insertionSort} = require '../../../src/algorithms/sorting/insertion'

describe 'Selection Sort', ->
  sampleArray = [6, 1, 8, 3, 9, 2 ,4]

  it 'sorts array in n^2 time complexity', ->
    expect(insertionSort(sampleArray).equals([1, 2, 3, 4, 6, 8, 9])).to.be.true
