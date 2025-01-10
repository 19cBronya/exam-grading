{
    files = {
        "build/.objs/summary/linux/x86_64/release/learn/summary.cpp.o",
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