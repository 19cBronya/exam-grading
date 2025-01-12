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
    depfiles_gcc = "main.o: 10_trivial/main.cpp 10_trivial/../exercise.h\
",
    files = {
        "10_trivial/main.cpp"
    }
}