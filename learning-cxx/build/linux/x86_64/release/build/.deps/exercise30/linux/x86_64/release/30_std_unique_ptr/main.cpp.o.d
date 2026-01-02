{
    depfiles_gcc = "main.o: 30_std_unique_ptr/main.cpp 30_std_unique_ptr/../exercise.h\
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
    },
    files = {
        "30_std_unique_ptr/main.cpp"
    }
}