-- lua require('template.template').generate_template("qt_widget")
--
-- qt_widget
-- qt_console
-- benchmark

local config = require("template/database/pre_define")

local function generate_template(type)
    if(type == "qt_widget") then
        cmake = config.qt_widget_cmake
        mainwindow_h = config.qt_widget_mainwindow_h
        mainwindow_cpp = config.qt_widget_mainwindow_cpp
        main_cpp = config.qt_widget_main_cpp
        mainwindow_ui = config.qt_widget_mainwindow_ui

        path = "qt_widget"

        -- print(cmake)
        if os.execute("cd "..path) == 0 then 
            print("The path already exists")
        else
            print("Create the path: " .. path)
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
        cmake = config.qt_console_cmake
        main_cpp = config.qt_console_main_cpp

        if os.execute("cd test") == 0 then 
            print("The path already exists")
        else
            print("Create the path: test")
            os.execute("mkdir test")
        end

        file = io.open("./test/CMakeLists.txt", "w")
        file:write(cmake)
        file:close()

        file = io.open("./test/main.cpp", "w")
        file:write(main_cpp)
        file:close()
    elseif type == "benchmark" then
        cmake = config.benchmark_cmake
        main_cpp = config.benchmark_main_cpp

        if os.execute("cd benchmark") == 0 then 
            print("The path already exists")
        else
            print("Create the path: benchmark")
            os.execute("mkdir benchmark")
        end

        file = io.open("./benchmark/CMakeLists.txt", "w")
        file:write(cmake)
        file:close()

        file = io.open("./benchmark/main.cpp", "w")
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
