{
    files = {
        "09_enum&union/main.cpp"
    },
    depfiles_gcc = "main.o: 09_enum&union/main.cpp 09_enum&union/../exercise.h\
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