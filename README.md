# First Move Program

1. Create a new move program inside the move folder:

* move new move-1

* cd move-1

* Add debug dependencies inside the Move.toml file  by adding the line: MoveNursery = { git = "https://github.com/move-language/move.git", subdir = "language/move-stdlib/nursery", rev = "main" }

2. Write the code

3. Run as follows from the main folder:

* move build

* move test: To run everything below # [test] 
