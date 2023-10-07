[advent of code]: https://adventofcode.com/
[Uiua]: https://www.uiua.org/

# Advent of Uiua

[advent of code] solutions in the [Uiua] programming language.

I'm too lazy to finish advent of code in normal programming languages so don't expect anything too crazy here.

## Usage

First, you must grab your session token from advent of code. You can do this by logging in and then copying the value of the `session` cookie. Then, place the value in `session.txt` in the root directory.

Then, you can run the solutions like so:

```bash
$ uiua run main.ua -- 2022 1
```

For testing purposes you can also run the solutions with the `--test` flag:

```bash
$ uiua run main.ua 2022 1 -- --test
```

This will run the solution using the data found in `test.txt` instead of pulling it from the website.