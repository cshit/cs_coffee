{expect} = require '../../test-helper'
{insert} = require '../../../src/ds/array/instert'

# Instert alement with index x and finds its position down to sorted array.
# Works when interting 2nd element
# Works when passing last element

describe 'Insert element into sorted array in place', ->

  sampleArray  = [3,4,5,6,2]
  sampleArray2 = [3,5,9,10,6,8]
  sampleArray3 = [3,2,5,6,7]

  it 'inserts last element into first position, index = 0', ->
    expect(insert(sampleArray, 3, 2).equals([2,3,4,5,6])).to.equal(true)

  it 'inserts second to last element to its corresponding position', ->
    expect(insert(sampleArray2, 3, 6).equals([3,5,6,9,10,8])).to.equal(true)

  it 'inserts second element into first position when lower than array[0]', ->
    expect(insert(sampleArray3, 0, 2).equals([2,3,5,6,7])).to.equal(true)
