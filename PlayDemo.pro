#-------------------------------------------------
# Project created by QtCreator 2018-07-28T23:03:46
#-------------------------------------------------
QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PlayDemo
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

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
