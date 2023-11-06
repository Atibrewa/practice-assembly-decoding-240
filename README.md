# Decoding `lea` Instructions

For this assignment, you are given an assembly code file, and you must work
backwards from the assembly code to create the corresponding C source file.

Compiler writers often rely on the `leaq` instruction for different types of math, as they allow computers to avoid using the more computationally expensive multiplication operator.

This problem is similar to those found in section 3.5.1 of your text. Also, it might be helpful (or at least interesting) to refer back to a portion of chapter 2, section 2.3.6, which discusses multiplication by constants and how the lea instruction is used by compilers to implement this.

## Problem Definition

File you will create: `lea_decode.c`

Your code should compile using the provided Makefile.

If your C source code is correct, the pertinent portion of the file called
`lea_decode.s` will match correct assembly  in the file called `lea_decode_correct.s`


You can use the Makefile to create lea_decode.s once you have created an lea_decode.c with code in it. **You can also use the make command to check if your lea_decode.c file has created the propers lea_decode.s file by doing this:**

    make compare

See below in important notes for some more details about this.

## Expectations for Code

This example is very simple, so the only thing that you need to do is comment your code file with a header that contains your name.

No extensive testing needed here--just devise the C code that compiles to the above assembly.

## Important Note

*You **should not** directly translate line by line into the C code* from the
assembly code for most of this example. Try to think about how some of the
assembly could be combined into compact expressions in C, using only arithmetic
operations and constants. Your answer should have simplified arithmetic
expressions and be only a few lines of C code.

## Comparing Your Solution

Doing the following will check the difference between 2 files:

    diff -I '.ident*' lea_decode.s lea_decode_correct.s

Do this on the terminal to find out more:

    man diff

The makefile has this built into it, so that you can do this after you have done a `make`:

    make compare
	
When you have everything correct, when you type the above `make compare` command, he diff command that runs will appear and return with no output. It will run like this:

    $ make compare
    diff -b -B -I '.file*' -I '.ident*' lea_decode.s lea_decode_correct.s

If there are errors, you will see output that attempts to tell you where the files are different. Lines with a < in front of them are from your file and lines with a > in front of them are corresponding lines in the correct complete version. The graders will use this to verify the correctness of your solution.
