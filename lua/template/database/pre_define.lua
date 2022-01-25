local config = {}

config.qt_widget_cmake = [[
cmake_minimum_required(VERSION 3.5.0)

project (demo LANGUAGES CXX)

set (CMAKE_C_COMPILER "gcc")
set (CMAKE_CXX_COMPILER g++)

set (CMAKE_INCLUDE_CURRENT_DIR ON)

# set (CMAKE_AUTOUIC ON)
set (CMAKE_AUTOMOC ON)
set (CMAKE_AUTORCC ON)

set (CMAKE_CXX_STANDARD 11)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

SET (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

find_package (Qt5 COMPONENTS Core REQUIRED)
find_package (Qt5 COMPONENTS Gui REQUIRED)
find_package (Qt5 COMPONENTS Widgets REQUIRED)
find_package (Qt5 COMPONENTS Network REQUIRED)
find_package (Qt5 COMPONENTS PrintSupport REQUIRED)

set (Project_UI  
    ${CMAKE_SOURCE_DIR}/ui/mainwindow.ui
)
qt5_wrap_ui (Project_UI_MOC  ${Project_UI})

set(SOURCES 
    ${CMAKE_SOURCE_DIR}/src/main.cpp
    ${CMAKE_SOURCE_DIR}/src/mainwindow.cpp
)

add_executable(demo
    ${SOURCES}
    ${Project_UI_MOC}
    # ${CMAKE_SOURCE_DIR}/res.qrc
    # resources.qrc
)

target_link_libraries(demo PRIVATE 
    Qt5::Core 
    Qt5::Gui
    Qt5::Widgets 
    Qt5::Network 
    Qt5::PrintSupport
)
]]



config.qt_widget_mainwindow_h = [[
#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui
{
class MainWindow;
}
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
};
#endif  // MAINWINDOW_H
]]


config.qt_widget_mainwindow_cpp = [[
#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}
]]

config.qt_widget_main_cpp = [[
#include "mainwindow.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow   w;
    w.show();
    return a.exec();
}
]]

config.qt_widget_mainwindow_ui = [[
<?xml version="1.0" encoding="UTF-8"?>
<ui version="4.0">
 <class>MainWindow</class>
 <widget class="QMainWindow" name="MainWindow">
  <property name="geometry">
   <rect>
    <x>0</x>
    <y>0</y>
    <width>800</width>
    <height>600</height>
   </rect>
  </property>
  <property name="windowTitle">
   <string>MainWindow</string>
  </property>
  <widget class="QWidget" name="centralwidget"/>
  <widget class="QMenuBar" name="menubar"/>
  <widget class="QStatusBar" name="statusbar"/>
 </widget>
 <resources/>
 <connections/>
</ui>
]]


config.qt_console_cmake = [[
cmake_minimum_required(VERSION 3.5.0)

project (demo LANGUAGES CXX)

set (CMAKE_C_COMPILER "gcc")
set (CMAKE_CXX_COMPILER g++)

set (CMAKE_INCLUDE_CURRENT_DIR ON)

set (CMAKE_AUTOUIC ON)
set (CMAKE_AUTOMOC ON)
set (CMAKE_AUTORCC ON)

set (CMAKE_CXX_STANDARD 11)
set (CMAKE_CXX_STANDARD_REQUIRED ON)

SET (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

find_package (Qt5 COMPONENTS Core REQUIRED)
set (SOURCES 
    ${CMAKE_SOURCE_DIR}/main.cpp
)

add_executable(demo
    ${SOURCES}
)

target_link_libraries(demo PRIVATE 
    Qt5::Core 
)
]]

config.qt_console_main_cpp = [[
#include <QCoreApplication>
#include <QtDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qDebug() << "Hello world";

    return a.exec();
}
]]


config.benchmark_cmake = [[
cmake_minimum_required (VERSION 3.0)
set(projectName demo)
# 项目名称
project (${projectName})

#include(auto_version.cmake)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_C_COMPILER gcc)
set(CMAKE_CXX_COMPILER g++)
set(CMAKE_CXX_STANDARD 11)

SET (EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

include_directories("D:/Lib/benchmark/include")
link_directories("D:/Lib/benchmark/build/src")

# 指定生成目标
add_executable(${projectName}
        main.cpp
        # src1.c
        # src2.c
)

target_link_libraries(${projectName}
        benchmark
        Shlwapi
)
]]

config.benchmark_main_cpp = [[
#include <vector>
#include <benchmark/benchmark.h>

static void BM_test(benchmark::State& state)
{
    std::vector<int> v;
    for(auto _ : state)
    {
        for(int i = 0; i < 1024; i++)
        {
            v.push_back(i);
        }
    }
}
BENCHMARK(BM_test);

BENCHMARK_MAIN();
]]

return config
