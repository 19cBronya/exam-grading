{
    files = {
        "03_argument&parameter/main.cpp"
    },
    depfiles_gcc = "main.o: 03_argument&parameter/main.cpp  03_argument&parameter/../exercise.h\
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