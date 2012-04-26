charttime = require('../')
{snapshotArray_To_AtArray, ChartTime} = charttime

ChartTime.setTZPath("../vendor/tz")

snapshotArray = [
  {_ValidFrom: '1999-01-01T12:00:00.000Z', _ValidTo:'2010-01-02T12:00:00.000Z', ObjectID: 0, someColumn: 'some value'},
  {_ValidFrom: '2011-01-01T12:00:00.000Z', _ValidTo:'2011-01-02T12:00:00.000Z', ObjectID: 1, someColumn: 'some value'},
  {_ValidFrom: '2011-01-02T12:00:00.000Z', _ValidTo:'9999-01-01T12:00:00.000Z', ObjectID: 2, someColumn: 'some value 2'},      
  {_ValidFrom: '2011-01-02T12:00:00.000Z', _ValidTo:'2011-01-03T12:00:00.000Z', ObjectID: 3, someColumn: 'some value'},
  {_ValidFrom: '2011-01-05T12:00:00.000Z', _ValidTo:'9999-01-01T12:00:00.000Z', ObjectID: 1, someColumn: 'some value'},
  {_ValidFrom: '2222-01-05T12:00:00.000Z', _ValidTo:'9999-01-01T12:00:00.000Z', ObjectID: 99, someColumn: 'some value'},
]

listOfAtCTs = [new ChartTime('2011-01-02'), new ChartTime('2011-01-03'), new ChartTime('2011-01-07')]

a = snapshotArray_To_AtArray(snapshotArray, listOfAtCTs, '_ValidFrom', 'ObjectID', 'America/New_York', '_ValidTo')

console.log(a)
