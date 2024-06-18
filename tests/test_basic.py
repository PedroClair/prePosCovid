from service import backEnd_prePosCovid as BE
from interface import frontEnd_prePosCovid as FE
from database import consult as DB

def testInterface():
    pass

def testService():
    BE.generateCsvToComparationLongTermPosPandemic()

def testDatabase():
    print(DB.searchQuestionSemester(1, '2022-1'))