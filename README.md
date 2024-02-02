# C++ Check Authors Docker Action

This action takes a CPSC 120 lab configuration and checks if a file named `AUTHORS.md` is located in the root-level of the student's repository and contains readable information.

Inspired by the tutorial at https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action.

## AUTHORS.md Format

Each author block is three lines. The lines, in order, are name, email, and GitHub user name prefixed with the @ sign.

The file follows a simple format:
  
```
Tuffy Titan
tuffy@csu.fullerton.edu
@tuffytitan
Peter Anteater
peter@csu.fullerton.edu
@anteater
```

White space at the beginning and end of the line is ignored. Blank lines are ignored.


## Inputs

The container runs a script in the .action directory which uses the `lab_config.py` file to identify the input files.

Additionally, the action assumes that the repository has been checked out using the `actions/checkout` action.

## Outputs

All the output is on `stdout`.

## Example usage

```
    steps:
      - uses: actions/checkout@v4
      - name: Header Check - Make sure the AUTHORS.md file exists and machine readable.
        id: authors-check
        uses: mshafae/cpp-check-authors-docker-action@v1
```