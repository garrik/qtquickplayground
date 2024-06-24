cmake_minimum_required(VERSION 3.21.1)

project(QtQuickPlaygroundApp LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if (Qt6_VERSION VERSION_GREATER_EQUAL 6.3)
    qt_standard_project_setup()
endif()

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(QtQuickPlaygroundApp 
    main.cpp
)

qt_add_qml_module(QtQuickPlaygroundApp
    URI qtquickplayground
    VERSION 1.0
    QML_FILES
    Main.qml
)

target_link_libraries(QtQuickPlaygroundApp PRIVATE
    Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS QtQuickPlaygroundApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
