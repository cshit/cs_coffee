{expect} = require('../../test-helper')
{swap} = require('../../../src/ds/array/swap')

describe 'Swap elements in array', ->
  sampleArray = [2, 5, 3, 7, 9]

  it 'swaps elements given array, first and second index', ->
    expect(swap(sampleArray, 3 , 0).equals([7, 5, 3, 2, 9])).to.be.true
