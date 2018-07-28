#-------------------------------------------------
#
# Project created by QtCreator 2018-07-28T23:03:46
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PlayDemo
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += \
    demo/cdirector.h \
    demo/csinger.h

SOURCES += \
    demo/main.cpp \
    demo/cdirector.cpp \
    demo/csinger.cpp

test {
    message(Test build)

    QT += testlib
    TARGET = DemoTest
    SOURCES -= demo/main.cpp
    INCLUDEPATH += $${PWD}/demo

    HEADERS += \
        test/cdirectortest.h \
        test/csingertest.h

    SOURCES += \
        test/main.cpp \
        test/cdirectortest.cpp \
        test/csingertest.cpp

} else {
    message(Normal build)
}

