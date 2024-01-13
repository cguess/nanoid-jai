#import "Random";
#import "String";
#import "Basic";

Id :: struct {
  content : string;
  size : int;
  alphabet : string;
}

// To do: add the actual full list of characters
generate_nanoid :: (alphabet: string = "abcedfghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUV123456789_-", size: int = 21) -> *Id {
  id := New(Id);

  id.size = size;
  id.alphabet = alphabet;

  nano_id := "";

  s : string;
  s.data = alloc(size);
  s.count = size;

  time := current_time_consensus();
  random_seed(cast(u64) time.low);

  for i: 0..size - 1 {
    s[i] = random_character(alphabet);
  }

  id.content = s;

  return id;
}

#scope_file

random_character :: (alphabet: string) -> u8 {
  length := cast(u64) alphabet.count - 1;
  random_number := random_get() % length;
  return alphabet[cast(int) random_number];
}

#scope_module
