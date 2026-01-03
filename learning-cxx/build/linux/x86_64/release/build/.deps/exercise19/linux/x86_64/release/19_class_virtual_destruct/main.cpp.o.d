{
    files = {
        "19_class_virtual_destruct/main.cpp"
    },
    depfiles_gcc = "main.o: 19_class_virtual_destruct/main.cpp  19_class_virtual_destruct/../exercise.h\
",
    values = {
        "/usr/bin/gcc",
        {
            "-m64",
            "-fvisibility=hidden",
            "-fvisibility-inlines-hidden",
            "-Wall",
            "-O3",
            "-std=c++17",
            "-finput-charset=UTF-8",
            "-fexec-charset=UTF-8",
            "-DNDEBUG"
        }
    }
}