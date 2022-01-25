-- lua require('template.template').generate_template("qt_widget")
--
-- qt_widget
-- qt_console
-- benchmark
local function generate_template(type)
    if(type == "qt_widget") then
        cmake = [[
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


        mainwindow_h = [[
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


        mainwindow_cpp = [[
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

        main_cpp = [[
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

        mainwindow_ui = [[
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

        path = "qt_widget"


        -- print(cmake)
        if os.execute("cd "..path) == 0 then 
            print("The path already exists")
        else
            os.execute("mkdir " .. path )
            os.execute("mkdir " .. path .. "\\src")
            os.execute("mkdir " .. path .. "\\ui")
        end

        file = io.open("./qt_widget/CMakeLists.txt", "w")
        file:write(cmake)
        file:close()

        file = io.open("./qt_widget/src/mainwindow.h", "w")
        file:write(mainwindow_h)
        file:close()

        file = io.open("./qt_widget/src/mainwindow.cpp", "w")
        file:write(mainwindow_cpp)
        file:close()

        file = io.open("./qt_widget/ui/mainwindow.ui", "w")
        file:write(mainwindow_ui)
        file:close()

        file = io.open("./qt_widget/src/main.cpp", "w")
        file:write(main_cpp)
        file:close()

    elseif type == "qt_console" then
        cmake = [[
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

        main_cpp = [[
#include <QCoreApplication>
#include <QtDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qDebug() << "Hello world";

    return a.exec();
}
        ]]
        if os.execute("cd test") == 0 then 
            print("The path already exists")
        else
            os.execute("mkdir test")
        end

        file = io.open("./test/CMakeLists.txt", "w")
        file:write(cmake)
        file:close()

        file = io.open("./test/main.cpp", "w")
        file:write(main_cpp)
        file:close()
    else
        print("The type is not supported")
    end
end

local function show_stuff(stuff)
    print (stuff)
end



return {
    generate_template = generate_template,
    show_stuff = show_stuff
}
