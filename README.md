# 🧠 libasm – Assembly Library for System-Level Programming

Welcome to `libasm`, a minimalist library written in **x86-64 Assembly** that replicates a few standard C library functions. This project is part of the 42 curriculum and offers a hands-on introduction to **low-level programming**, where code meets hardware.

---

## 🔍 What Is Assembly Language?

Assembly language is a **low-level programming language** that provides a direct interface with a computer's hardware. Unlike high-level languages like Python or even lower-level ones like C, assembly operates **one abstraction layer above machine code**—meaning each instruction corresponds directly to an operation the CPU performs.

Each processor architecture (like x86, ARM, etc.) has its own assembly language. This project uses **x86-64 NASM syntax** on Linux.

### 🧩 Why Learn Assembly?

- Understand how memory, registers, and the CPU interact
- Write highly optimized and efficient code
- Gain deeper insights into how compiled C code actually works
- Improve debugging skills at the binary level

---

## 🛠️ Project Overview

The `libasm` project consists of re-implementing a few basic functions from the C standard library, using assembly language:

### 📚 Functions to Implement

| Function       | Description                             |
|----------------|-----------------------------------------|
| `ft_strlen`    | Computes the length of a string         |
| `ft_strcpy`    | Copies one string to another            |
| `ft_strcmp`    | Compares two strings                    |
| `ft_write`     | Writes data to a file descriptor        |
| `ft_read`      | Reads data from a file descriptor       |
| `ft_strdup`    | Duplicates a string (malloc + copy)     |

Optional Bonus:
- `ft_atoi_base` – Converts a string to an integer using a custom base
- `ft_list_push_front` – Adds an element to the front of a linked list
- `ft_list_size` – Returns the size of a linked list
- `ft_list_sort` - Sorts a singly linked list using a comparison function
- `ft_list_remove_if` - Removes all elements matching a condition from the linked list

---

## 🚧 Build and Run

This project is built using **NASM** and **GCC** for linking and testing.

### 🧱 Prerequisites

- Linux environment
- NASM assembler
- GCC compiler
- `make`

### 🔨 Build Instructions

```bash
# Clone the repository
git clone https://github.com/yourusername/libasm.git
cd libasm

# Build the static library
make

# Run tests (custom or included ones)
make test
```

### 🧬 Project Structure


## 📚 Resources

- [NASM Documentation](https://www.nasm.us/doc/)
- [Linux Syscalls Table](https://filippo.io/linux-syscall-table/)
- [Calling Conventions Explained](https://en.wikibooks.org/wiki/X86_Assembly/System_V_AMD64_ABI)

