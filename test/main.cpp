#include "cdirectortest.h"
#include "csingertest.h"
#include <QDebug>

int main(int argc, char *argv[])
{
    CSingerTest signTest;
    CDirectorTest directorTest;

    return QTest::qExec(&signTest, argc, argv) |
           QTest::qExec(&directorTest, argc, argv);

}
