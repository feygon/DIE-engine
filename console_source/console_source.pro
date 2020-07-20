QT += core
QT -= gui

include(../build.pri)

CONFIG += c++11

TARGET = diec
CONFIG += console
CONFIG -= app_bundle

SOURCES += \
        main_console.cpp

!contains(XCONFIG, die_script) {
    XCONFIG += die_script
    include(../die_script/die_script.pri)
}
