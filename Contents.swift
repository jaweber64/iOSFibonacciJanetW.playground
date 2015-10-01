// Playground - noun: a place where people can play

// Janet Weber  Due 10/5/2015
// Fibonacci Sequence : Lab Assignment (week 7)

// Write a function that calculates and displays all the Fibonacci number 
// from 0 to 1000:  f(n) = f(n-1) + f(n-2)  where f(0) = 0 and f(1)=1  OR 
// f(1) = 1 and f(2) = 1        I’ll just pick to start from f(0) = 0.

import UIKit

// ********************
// Variables
// *********************
var j : Int                 // array index into fibonacci sequence
var fib : [Int] = [0]       // array that will eventually contain
                            //   fibonacci sequence.  First element
                            //   already initialized

// *****************************
// closure code
// *****************************
// Recieves an int n (index into fibonacci sequence) so returns
//     0 if n is 0 and returns 1 if n is 1.  From there it returns
//     the sum of the previous 2.
let closure = {(n : Int) -> Int in
    if (n == 0) {
        return 0
    } else {
        if (n == 1) {
            return 1
        } else {
            return (fib[n-1]+fib[n-2])
        }
    }
} // end of closure

// ***********************************
// Use closure to print results
// ***********************************
println("Fibonacci sequence up to 1000:")
println("")
j = 0                           // initialize j to 0
while (closure(j) < 1000) {     // Are we done?
    if (j != 0) {               // 0 means first array element, do nothing
        if (j == 1) {           // 1 means second array element
            fib.append(1)       //    append it to fib array
        } else {
            fib.append(fib[j-1] + fib[j-2]) // append remaining elements
        }
    }
println(closure(j))             // always display then
j++                             //   increment j
} // end of while