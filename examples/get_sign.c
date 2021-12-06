/*
 * First KLEE tutorial: testing a small function
 * https://klee.github.io/tutorials/testing-function/
 */

#include <klee/klee.h>

int get_sign(int x)
{
    if (x == 0)
        return 0;

    if (x < 0)
        return -1;
    else
        return 1;
}

int main()
{
    int a;
    klee_make_symbolic(&a, sizeof(a), "a");
    int b = 1000 / (a + 5);
    return get_sign(a);
}

// A) Compiling into LLVM bitcode
// > clang -emit-llvm -c get_sign.c
//
// Now you can run Klee on your generated bitcode.
//
// > klee get_sign.bc
//
// KLEE: output directory is "/home/hector/Documents/GitHub/d7020e_klee/examples/klee-out-0"
// KLEE: Using Z3 solver backend
// KLEE: ERROR: (location information missing) divide by zero
// KLEE: NOTE: now ignoring this error at this location

// KLEE: done: total instructions = 46
// KLEE: done: completed paths = 3
// KLEE: done: partially completed paths = 1
// KLEE: done: generated tests = 4

//
// B) Inspecting the output
//
// > ls klee-last/
//
// KLEE: output directory is "/home/hector/Documents/GitHub/d7020e_klee/examples/klee-out-0"
// KLEE: Using Z3 solver backend
// KLEE: ERROR: (location information missing) divide by zero
// KLEE: NOTE: now ignoring this error at this location

// KLEE: done: total instructions = 46
// KLEE: done: completed paths = 3
// KLEE: done: partially completed paths = 1
// KLEE: done: generated tests = 4

//
// C) Inspecting the generated test cases
//
// > ktest-tool klee-last/test000001.ktest
//
// What path in the code does this test represent?
//
// a = -5
//
// > ktest-tool klee-last/test000002.ktest
//
// What path in the code does this test represent?
//
// a > 0
// > ktest-tool klee-last/test000003.ktest
//
// What path in the code does this test represent?
//
// a = 0
//
// D) Replaying a test case
//
// Fist check that includes were installed:
// > ls /usr/local/include
// klee
//
// > ls /usr/local/lib
// klee  libkleeRuntest.so  libkleeRuntest.so.1.0
//
// If you installed Klee using the package manager
// the path might be different:
//
// Using `aur` (arch) files are stored in the system default
// folders, `/usr/include` and `/usr/lib`.
//
// If those are ok, then you can compile for replay:
//
// > clang -I /usr/local/include/ -L /usr/local/lib get_sign.c -l kleeRuntest
//
// Or just
// > clang get_sign.c -l kleeRuntest
//
// If the `include` and `lib` paths are the system defaults.
//
// To replay the first test:
//
// We need to add the libary path so it can be dynamically loaded:
// Depending on shell this might look different:
//
// Under `bash` (and `bash` like shells)
// > export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
//
// Under `fish`
// > set -x LD_LIBRARY_PATH /usr/local/lib/:$LD_LIBRARY_PATH
//
// Once again, if using the system default system folders
// you don't need to add anything to `LD_LIBRARY_PATH`.
//
// > KTEST_FILE=klee-last/test000001.ktest ./a.out
//
// Now let's inspect the status (return code), in `bash`:
// $? is the return value (error code) as seen by the shell.
//
// > echo $?
//
// In `fish` you would do
//
// > echo $status
//
// Did the result correspond to the expected path for the test?
//
// yes return exit code 136 which is for floating point exception
//
// > KTEST_FILE=klee-last/test000002.ktest ./a.out
//
// Inspect the return code: 1
//
// Did the result correspond to the expected path for the test?
//
// no, should not return an error
//
// > KTEST_FILE=klee-last/test000003.ktest ./a.out
//
// Inspect the return code: 0
//
// Did the result correspond to the expected path for the test?
//
// yes should not return any erros
//
// Why not? Confer to shell error codes:
//
// floating point exception in test 1
//
// D) Debugging
//
// In the above example its kind of hard to see exactly
// what happens. Using `gdb` you single step the program.
//
// First build it with debug symbols (`-g`).
// > clang -g -I /usr/local/include/ -L /usr/local/lib get_sign.c -l kleeRuntest
//
// Or if using system defaults:
// > clang -g get_sign.c -l kleeRuntest
//
// Then start `gdb`:
// > KTEST_FILE=klee-last/test000001.ktest gdb ./a.out
// (gdb) break get_sign
//
// (gdb) run
//
// Now we can inspect the `x` argument by:
// (gdb) print x
//
// What value do you get, and why?
//
// printed for a value instead
// $1 = -5
//
// Step the code
// > (gdb) next
//
// What path did it take, and why?
//
// Program terminated with signal SIGFPE, Arithmetic exception.
// The program no longer exists.
// Because division by zero
// a = -5
//
// Now we can try with another test:
//
// (gdb) set environment KTEST_FILE=klee-last/test000002.ktest
//
// And (re-start) the debug session:
// (gdb) run
//
// Step through the code.
//
// Which path did it take, and why?
//
// path a > 0 because a is bigger than zero?
//
// And finally:
//
// (gdb) set environment KTEST_FILE=klee-last/test000003.ktest
//
// Which path did it take, and why?
//
// path a = 0 because a is equal to zero.
//
// E) Under the hood.
//
// Explain in your own words how
// `klee_make_symbolic(&a, sizeof(a), "a");`
// works when you run `klee` to generate test cases:
//
// The function is used in order to make a symbol symbolic. The first argument
// marks the start of the address of the object, then the second argument
// the number of bytes the object is, and the last argument is a name to
// identify the object.
// (hint, mark memory region as symbolic)
//
// Explain in your own words how
// `klee_make_symbolic(&a, sizeof(a), "a");`
// works when you replay test cases:
//
// the function is replaced with a function that instead assigns symbolic values from .ktest files.
// (hint, KTEST_FILE points to a concrete assignment
// of the memory region)
