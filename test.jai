#import "Basic";
#load "module.jai";

main :: () {
  print("Testing...\n");

  nanoid := generate_nanoid();

  print("Got: %", nanoid.content);
}
