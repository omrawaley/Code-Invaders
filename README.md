# Code-Invaders
Space Invaders but with a coding twist. Developed using only SFML and C++.

I've always hated high-level programming languages because they're pretty easy and to be honest, some of those languages (like Python) are more like writing English than writing code! 

In this version of Space Invaders, the aliens have been swapped for high-level languages and the player has been swapped with a low-level language.

## Features
It is highly-customizable and modular. You can easily create your own levels and enemy formations by going into the `levels.h` file. Currently, there are four enemy types:

- Java
- JavaScript
- Python
- Empty/Space

## How to run
A `CMakeLists.txt` is included and can be used to generate a Makefile using CMake. This generated Makefile exports the binary to the `bin` folder. 

The binary which comes already included in the `bin` folder may or may not run on your machine due to a multitude of reasons, and if that's the case, then it's highly advisable to generate it again using the `CMakeLists.txt`.

To run the program, `cd` into the `CodeInvaders` directory and run the command `./bin/codeinvaders`. Note: you must run the program from the `CodeInvaders` directory and **not** from the `bin` folder, otherwise textures will be missing.

## To do
- Add a high score list which grabs data from a `.txt` (may be achievable as I've dabbled in the art of [text editors](https://github.com/omrawaley/T-Write-Plus-Plus-Terminal-Based-Text-Editor) before)
- Enemies can shoot the player
- Varied enemies; some have more health, some shoot faster, etc.
- Either a health bar or a the classic "lives" thing
- Those barricade/asteroid things
- Un-spaghetti (organize) the code
