// array.rs
// Showcase how we automatically can interface Rust to KLEE
//

#![no_std]
#![no_main]

use klee_sys::klee_make_symbolic;
use panic_klee as _;

fn sum_first_elements(arr: &[u8], index: usize) -> usize {
    let mut acc: usize = 0;
    for i in 0..index {
        if i >= arr.len() {
            break;
        }
        acc += arr[i as usize] as usize;
    }
    acc
}

#[no_mangle]
fn main() {
    let mut arr = [0u8; 8];
    let mut i: usize = 0;
    klee_make_symbolic!(&mut arr, "arr");
    klee_make_symbolic!(&mut i, "i");
    let b = sum_first_elements(&arr, i);
}

// A) Array indexing is tricky to analyse at compile time.
// Thus Rust (rustc) will inject code for run-time verification
// `panic`ing on index out of range.
//
// (Compare to C/C++, where a "buffer overflow" might pass unnoticed
// causing all sorts of problems.)
//
// Compare the test generated in release `--release` (optimized) to
// test generated in debug/dev mode (un-optimized).
//
// Try to explain in your own words the difference and why?
// (Hint, even if we don't use the result `b`, Rust do not optimize out the call, why?)
//
// In debug mode the tests will have all of the debugging tools in order to verify
// that the program is running as intended.
// In release mode we assume the program has already been tested so the checks can be removed
// Therefore the program will be a lot more optimized in release mode
//
// B) Fix the code so that you don't get an error.
// (It should still compute the sum of the n first elements
// and return the sum of the whole array if index larger than size/length).
// The fix should be in the function (not on the caller side).
//
// [Git commit "Array B"]
//
// C) In the example, the array is holding only zeroes.
// Figure out a way to make the content symbolic.
// Hints: declare as mutable, you can set the whole array symbolic.
//
// [Git commit "Array C"]
//
// D) Analyze the example using KLEE. Now a new (maybe unexpected) error should occur!
// Notice, the error occurs only in `debug/dev` builds.
//
// Explain what caused the error.
//
// [Git commit "Array D"]
//
// Acc is a u8 int and can max be 255. Every element in the array can be up to 255.
// Therefore there are cases where we get overflow in acc.
//
// E) Make a sensible fix to the code.
// Motivate your choice.
//
// Changed acc variable to me usize. This is either u32 or u64 that will
// be able to take many more than 8 u8 integer before overflowing
//
// [Git commit "Array E"]
//
// F) Learning outcome.
// In this small exercise we have used KLEE to find errors in our code.
// For such small examples you may spot the errors by "eye".
// The problem however becomes increasingly difficult with increased code size.
// In industry it is expected 15-50 errors per 1000 delivered lines of code.
//
// KLEE analysis ensures "defined behavior", thus Rust code passing KLEE
// without errors is ensured to be free of run-time panics.
//
// Describe in your own words how that improves robustness and reliability.
//
// As stated above for small systems it may be easy to get an understanding
// of possible errors. But for much larger systems there are a lot of edge cases
// that is almost impossible to realize before it happens. Therefore it is really
// useful in order to ensure that the program will at least do as the code
// is written without reaching a state where it fails.
//
// [Git commit "Array F"]
