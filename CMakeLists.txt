cmake_minimum_required(VERSION 3.21.1)

project(QtQuickPlaygroundApp LANGUAGES CXX)

include(CMakePrintHelpers)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON) # allows to add qrc files to the list of sources for the target

find_package(Qt6 6.2 REQUIRED COMPONENTS Core Gui Qml Quick)

if (Qt6_VERSION VERSION_GREATER_EQUAL 6.3)
    qt_standard_project_setup()
endif()

# Make Qt Creator aware of where the QML modules is located
# this is not required for the project to build and run
# btw does not work
list (APPEND _QML_IMPORT_PATHS ${CMAKE_CURRENT_SOURCE_DIR})

set(QML_IMPORT_PATH ${_QML_IMPORT_PATHS} CACHE STRING "Qt Creator extra qml import paths" FORCE)
cmake_print_variables(_QML_IMPORT_PATHS)
cmake_print_variables(QML_IMPORT_PATH)

qt_add_executable(QtQuickPlaygroundApp 
    main.cpp
    main.qrc
)

target_link_libraries(QtQuickPlaygroundApp PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS QtQuickPlaygroundApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
