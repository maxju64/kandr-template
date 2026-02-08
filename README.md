# Create C Projects and Version Control Them

Included is a small configurable script to get your C projects started with a reasonable project directory layout.

Use the script to create a project directory in the Chapter of your choosing using the instructions in `/scripts/dir.sh`. This will automatically create a script and crucially add the build folder to your `.gitignore`, as you don't want to be uploading random build artifacts.

If you wish to include a copy of the K&R textbook to your project directory, make sure to add it to your `.gitignore` as it's copyrighted material and you likely don't own the rights to redistribute it.

## Instructions

```bash
#cd to the chapter you wish to work on
mkdir Chapter\ 1
cd Chapter\ 1
../scripts/dir.sh 1 my_binary
cd my_binary
make #verify that you can build the project.
git add .
git commit -m "Your commit message"
```

## Typical Project Layout
```bash
.
├── build
│   ├── main.o
│   ├── project
│   └── project.o
├── Makefile
└── src
    ├── main.c
    ├── project.c
    └── project.h
```
## License

This project is licensed under the MIT License - see the LICENSE file for details.
