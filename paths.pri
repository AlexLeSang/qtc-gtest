## set the QTC_SOURCE environment variable to override the setting here
QTCREATOR_SOURCES = $$(QTC_SOURCE)
isEmpty(QTCREATOR_SOURCES):QTCREATOR_SOURCES=$$PWD/../qt-creator-opensource-src-3.4.1

## set the QTC_BUILD environment variable to override the setting here
IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE){
    linux-g++:QMAKE_TARGET.arch = $$QMAKE_HOST.arch
    linux-g++-32:QMAKE_TARGET.arch = x86
    linux-g++-64:QMAKE_TARGET.arch = x86_64

    IDE_BUILD_TREE=$$PWD/../build-qtcreator-3.4.1-Qt_5_4_1_GCC_64bit-Release
    CONFIG(debug, debug|release):IDE_BUILD_TREE=$$PWD/../build-qtcreator-3.4.1-Qt_5_4_1_GCC_64bit-Release
    contains(QMAKE_TARGET.arch, x86):IDE_BUILD_TREE=$$PWD/../qtcreator-latest/release-x86
    msvc:IDE_BUILD_TREE=$$PWD/../qtcreator-latest/release-vc10
}
