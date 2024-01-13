#import "Basic";
#load "module.jai";

main :: () {
  print("Testing...\n");

  time := current_time_consensus();
  random_seed(cast(u64) time.low);

  nanoid := generate_nanoid();

  print("Got: %", nanoid);
}
