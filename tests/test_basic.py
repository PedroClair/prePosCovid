from service import backEnd as BE
from interface import frontEnd as FE
from database import consult as sql

def testInterface():
    #FE.showBoxplotComparationPosPandemic()
    FE.generalResult()

def testService():
    #BE.generateCsvToComparationPrePosPandemic()
    BE.generateCsvToComparationPosPandemic()

def testDatabase():
    sql.searchQuestionSemester(1, '2022-1')