#import "Random";
#import "String";
#import "Basic";

// To do: add the actual full list of characters
generate_nanoid :: (alphabet: string = "abcedfghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUV123456789_-", size: int = 21) -> string {
  nanoid : string;
  nanoid.data = alloc(size);
  nanoid.count = size;

  for i: 0..size - 1 {
    nanoid[i] = random_character(alphabet);
  }

  return nanoid;
}

#scope_file

random_character :: (alphabet: string) -> u8 {
  length := cast(u64) alphabet.count - 1;
  random_number := random_get() % length;
  return alphabet[cast(int) random_number];
}

#scope_module
