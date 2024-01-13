#import "Basic";
#load "module.jai";

main :: () {
  print("Testing...\n");

  setup_nanoid();

  nanoid := generate_nanoid();

  print("Got: %", nanoid);
}
