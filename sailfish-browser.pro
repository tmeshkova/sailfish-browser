QT += opengl declarative
# The name of your app
TARGET = sailfish-browser

lessThan(QT_MAJOR_VERSION, 5) {
  CONFIG += link_pkgconfig
  PKGCONFIG += QJson
}

# Include qtmozembed
isEmpty(QTEMBED_LIB) {
  CONFIG += link_pkgconfig
  PKGCONFIG += qtembedwidget x11
} else {
  LIBS+=$$QTEMBED_LIB
}

isEmpty(DEFAULT_COMPONENT_PATH) {
  DEFINES += DEFAULT_COMPONENTS_PATH=\"\\\"/usr/lib/mozembedlite/\\\"\"
} else {
  DEFINES += DEFAULT_COMPONENTS_PATH=\"\\\"$$DEFAULT_COMPONENT_PATH\\\"\"
}

# C++ sources
SOURCES += \
    src/declarativebrowsertab.cpp \
    src/declarativeparameters.cpp \
    sailfishbrowser.cpp \
    src/declarativebookmarkmodel.cpp \
    src/bookmark.cpp

# C++ headers
HEADERS += \
    src/declarativebrowsertab.h \
    src/declarativeparameters.h \
    src/declarativebookmarkmodel.h \
    src/bookmark.h

# QML files and folders
qml.files = *.qml pages cover browser.qml

# The .desktop file
desktop.files = sailfish-browser.desktop

# Please do not modify the following line.
include(sailfishapplication/sailfishapplication.pri)

OTHER_FILES = pages/BrowserPage.qml \
              rpm/sailfish-browser.spec
