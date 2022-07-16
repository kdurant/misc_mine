-- lua require('template.template').generate_template("qt_widget")
--
-- qt_widget
-- qt_console
-- benchmark

local config = require("template/database/pre_define")

local function generate_template(type)

    if vim.api.nvim_eval('has("unix")') == 1 then
        path_seperator = "/"
    else
        path_seperator = "\\"
    end

    if(type == "qt_widget") then
        cmake = config.qt_widget_cmake
        mainwindow_h = config.qt_widget_mainwindow_h
        mainwindow_cpp = config.qt_widget_mainwindow_cpp
        main_cpp = config.qt_widget_main_cpp
        mainwindow_ui = config.qt_widget_mainwindow_ui

        path = "qt_widget"

        file1, err = io.open(path)
        if err == nil then 
            vim.notify("The path already exists", vim.log.levels.WARN)
        else
            vim.notify("Create the path: " .. path, vim.log.levels.INFO)
            os.execute("mkdir " .. path )
            os.execute("mkdir " .. path .. path_seperator .. "src")
            os.execute("mkdir " .. path .. path_seperator .. "ui")
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

        file, err = io.open('test')
        if err == nil then 
            vim.notify("The path already exists", vim.log.levels.WARN)
        else
            vim.notify("Create the path: test" , vim.log.levels.INFO)
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

        file, err = io.open('benchmark')
        if err == nil then 
            vim.notify("The path already exists", vim.log.levels.WARN)
        else
            vim.notify("Create the path: benchmark" , vim.log.levels.INFO)
            os.execute("mkdir benchmark")
        end

        file = io.open("./benchmark/CMakeLists.txt", "w")
        file:write(cmake)
        file:close()

        file = io.open("./benchmark/main.cpp", "w")
        file:write(main_cpp)
        file:close()
    elseif type == "fpga" then
        path = "fpga_project"
        
        file, err = io.open(path)
        if err == nil then 
            vim.notify("The path already exists", vim.log.levels.WARN)
        else
            vim.notify("Create the path: " .. path , vim.log.levels.INFO)
            os.execute("mkdir " .. path )
            os.execute("mkdir " .. path .. path_seperator .. "doc")
            os.execute("mkdir " .. path .. path_seperator .. "hdl")
            os.execute("mkdir " .. path .. path_seperator .. "bench")
            os.execute("mkdir " .. path .. path_seperator .. "modelsim")
            os.execute("mkdir " .. path .. path_seperator .. "build")
            os.execute("mkdir " .. path .. path_seperator .. "ip")
            os.execute("mkdir " .. path .. path_seperator .. "vivado")
            os.execute("mkdir " .. path .. path_seperator .. "scripts")
        end
    else
        vim.notify("The type is not supported", vim.log.levels.ERROR)
    end
end

local function show_stuff(stuff)
    print (stuff)
end



return {
    generate_template = generate_template,
    show_stuff = show_stuff
}
