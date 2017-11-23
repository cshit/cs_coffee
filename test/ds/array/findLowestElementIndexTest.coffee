{expect} = require '../../test-helper'
{findLowestIndex} = require '../../../src/ds/array/findLowestElementsIndex'

describe  'Finds lowest elements index given a start index', ->
  sampleArray = [10,1,2,0,7,5,6]

  it 'returns loweset when starting from index = 0', ->
    expect(findLowestIndex(sampleArray, 0)).to.equal(3)

  it 'returns lowest when starting from 0 < index < length-1', ->
    expect(findLowestIndex(sampleArray, 1)).to.equal(3)
    expect(findLowestIndex(sampleArray, 2)).to.equal(3)
    expect(findLowestIndex(sampleArray, 4)).to.equal(5)

  it 'returns current when starting from index = length-1', ->
    expect(findLowestIndex(sampleArray, 6)).to.equal(6)
