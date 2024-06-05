# Development Sandbox Environment

This Dockerfile creates a sandbox development environment based on Ubuntu 22.04. The environment includes a variety of programming languages and essential development tools: Python, Java, JavaScript (Node.js), Rust, GCC, and G++.

## Contents

- [Prerequisites](#prerequisites)
- [Pull the Image](#pull-the-image)
- [Run the Container](#run-the-container)
- [Installed Software](#installed-software)
- [Usage](#usage)
- [Maintaining the Container](#maintaining-the-container)

## Prerequisites

Ensure you have the following installed on your system:

- Docker

## Pull the Image

The image is publicly available on Docker Hub. You can pull it using the following command:

```sh
docker pull mkpro118/mk-sandbox:latest
```

## Run the Container

To start a container from the pulled image, use the following command:

```sh
docker run -it mkpro118/mk-sandbox:latest bash
```

This will open an interactive shell inside the container.

## Installed Software

The Docker image includes the following software:

- **Ubuntu 22.04**: Uses the stable LTS Ubuntu 22.04 Operating System
- **Build Essentials**: Tools such as `wget`, `curl`, `unzip`, `vim`, `make`.
- **GCC and G++**: C and C++ compilers
- **Python**: Version 3.11, including `pip` and CPython development headers
- **Java**: JDK 17
- **Node.js**: Version 22.x
- **Rust**: Installed via `rustup`, with all rust development components.

## Usage

### Python

Python 3.11 is installed and can be accessed using the `python3` command. A shortcut alias `py` is also set up for convenience. Use `pip` for package management.

```bash
python3 --version
pip3 install <package-name>
py <script.py>
```

### Java

Java JDK 17 is installed. You can compile and run Java programs using `javac` and `java`.

```bash
javac MyProgram.java
java MyProgram
```

### Node.js

Node.js v22.x is installed along with `npm`.

```bash
node --version
npm install <package-name>
```

### Rust

Rust is installed via `rustup`, and the environment is configured. You can start using Rust with the `cargo` command.

```bash
rustc --version
cargo new my_project
cd my_project
cargo build
```

### GCC and G++

You can compile C and C++ programs using `gcc` and `g++`.

```bash
gcc my_program.c -o my_program
./my_program

g++ my_program.cpp -o my_program
./my_program
```

## Maintaining the Container

### Cleaning Up

To keep the container clean and minimal, the Dockerfile includes steps to remove unnecessary files and clean the package lists after installation.

### Updating Software

To update the software inside the container, modify the Dockerfile with the desired versions and rebuild the image.

## Notes

- **Minimized Image Size**: No libraries for any programming languages are pre-installed to minimize the image size. You can install the libraries you need as you go.
- The container is designed for development and testing purposes. It is not intended for production use.
- Feel free to extend and customize the Dockerfile to suit your specific development needs.

For any issues or improvements, please feel free to contribute or raise an issue.
