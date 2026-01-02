{
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
    },
    files = {
        "18_class_virtual/main.cpp"
    },
    depfiles_gcc = "main.o: 18_class_virtual/main.cpp 18_class_virtual/../exercise.h\
"
}