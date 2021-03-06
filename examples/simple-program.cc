/*
 Here is a simple program that generates test cases for following problem
  "
  The first line of each testcase contains T denoting the number of testcase
  Each test case contains two space separated Integer A and B

  1 <= A < 100000
  1 <= B < 100
  1 <= T < 10
  "

*/

#include <testcaser/maker>

using testcaser::maker::TestCaseBuilder;
using testcaser::maker::types::RandomUnsignedInteger;

int main() {
  // Create the builder object with file name. We will generate a file on
  // current directory named test.txt
  TestCaseBuilder builder("./test.txt");

  // the object that will generate random values for A, B, and Test case. We
  // have specified the range in the constructor. RandomUnsignedInteger is a
  // template class to use the default template parameters specify <>.
  RandomUnsignedInteger<> a({1, 100000});
  RandomUnsignedInteger<> b({1, 100});
  RandomUnsignedInteger<> t({1, 10});

  // let's start writing the testcase number. We need to hold it into some
  // variable, the test case count value.
  auto tt = builder.add(t);

  // let's add a new line.
  builder.add_line();

  // the above T contains the random test case count.
  // We specified true because
  // we want a new line after this random value.

  // as per our test case repeat for till T count using a loop

  for (unsigned int p = 0; p < tt; p++) {
    // add the random value of A. We specified true and SPACE because we want
    // next value B to be space separated with this A. The true parameter tells
    // the builder that it needs to write something just after A. In this case a
    // Space. You can specify any character you wish instead.
    builder.add(a);

    // let's add a space
    builder.add_space();

    // Write be and move to next line. We used false to move to next line
    builder.add(b);

    // let's Add a new line
    builder.add_line();
  }

  // Finally call finalize on builder so that builder writes it down as a file.
  // If you miss this and builder is destroyed without being finalized your file
  // will not be written.
  builder.finalize();

  // After running this a file named test.txt will be generated as
  /**
   *
    7
    32678 68
    55031 23
    24153 42
    67404 2
    16544 66
    7010 80
    53721 54

   *
   */

  // The contents will differ as it is random

  return 0;
}
