#include <QString>
#include <QtTest>
#include <QCoreApplication>
#include "cdirectortest.h"

void CDirectorTest::initTestCase()
{
}

void CDirectorTest::cleanupTestCase()
{
}

void CDirectorTest::testStartPlay()
{
    CDirector director;
    director.startPlay();

    QTRY_COMPARE(director.playState(), CDirector::Started);
}
void CDirectorTest::testFinishPlay()
{
    CDirector director;
    director.finishPlay();

    QTRY_COMPARE(director.playState(), CDirector::Finished);
}
