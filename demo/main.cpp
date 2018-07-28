#include <QApplication>
#include "cdirector.h"
#include "csinger.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    CDirector director;
    director.startPlay();

    CSinger singer;
    singer.startSing(CSinger::Blues);

    return a.exec();
}
