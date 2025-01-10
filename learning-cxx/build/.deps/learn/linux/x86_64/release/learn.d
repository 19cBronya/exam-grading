{
    files = {
        "build/.objs/learn/linux/x86_64/release/learn/learn.cpp.o",
        "build/linux/x86_64/release/libtest.a"
    },
    values = {
        "/usr/bin/g++",
        {
            "-m64",
            "-Lbuild/linux/x86_64/release",
            "-s",
            "-ltest"
        }
    }
}