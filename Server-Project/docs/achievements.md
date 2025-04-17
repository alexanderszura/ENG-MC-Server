---
id: curriculum
title: Curriculum Connections
sidebar_position: 4
---

# Curriculum Connections

This document outlines how the Minecraft Server Hosting and Networking Project addresses key expectations from the **TEJ4M1 Grade 12 Computer Engineering** curriculum.

---

## ✅ A1 - Computer Hardware

### 🔹 A1.1 – Internal Buses and System Communication
Internal buses play a critical role in ensuring all parts of the computer can communicate effectively:

- **Data Bus:** Transfers actual data between CPU, RAM, and storage. A wider data bus (like 64-bit) means more data can be moved at once. This affects Minecraft performance by allowing faster updates to the game state.

- **Address Bus:** Sends memory addresses so the CPU knows where to read/write data. A server with a 64-bit address bus can use more memory—important for hosting multiple players and large worlds.

- **Control Bus:** Carries control signals (like read/write commands). Keeps the timing and coordination of CPU and memory operations smooth, reducing lag during world saves or player movement.

- **CPU-RAM Bus (Memory Bus):** The RAM in this server runs at 2400 MT/s, which supports fast chunk loading and entity tracking by enabling high-speed data transfers to/from memory.

- **Storage Bus (SATA):** Connects the SSD to the motherboard. SATA III supports up to 6 Gb/s transfer speed—enough for solid performance during saves and backups.

These internal buses ensure the server can react in real time, which is essential for smooth multiplayer gameplay.

### 🔹 A1.2 – Storage Devices for Server Needs
Selecting the right storage affects how well the server can handle saving/loading game data:

- **SSD (SATA, 256 GB):**
  - Provides fast load times and quick access to world files.
  - Large enough for moderate world sizes and multiple backups.
  - More reliable and faster than HDDs, especially for I/O-intensive Minecraft operations.

- **RAM (16 GB):**
  - Holds active game data in memory, allowing quick access to chunks, entities, and player states.
  - With 16 GB, the server can easily handle multiple players and plugins/mods.

- **Improvement Ideas:**
  - Upgrade to **NVMe SSD** for even faster speeds.
  - Add **RAID 1** for redundancy and protection from data loss.
  - Use a **dedicated backup drive** to keep world data safe and separate from main storage.

## ✅ A2 – Network Systems

### 🔹 A2.1 – Assigning Permissions
- Set proper read/write permissions on world save directories and script files to prevent unauthorized access or corruption.

---

## ✅ B2 – Computer Systems

### 🔹 B2.1 – Research and Troubleshooting
- Used online forums, documentation, and command references to troubleshoot issues like port forwarding, batch scripting errors, and file locking.

### 🔹 B2.2 – Documentation
- Created a log file system within the batch script to timestamp and track backups and startup attempts.

### 🔹 B2.3 – Logical Troubleshooting
- Applied a methodical approach to fixing common server and network issues including port conflicts, firewall blocks, and DHCP assignment problems.

---

## ✅ B4 – Network Setup and Management

### 🔹 B4.1 – Build a Network
- Connected multiple devices to a router for LAN access, enabling both wired and wireless clients to connect to the server.

### 🔹 B4.2 – Optimize a Network
- Configured static IPs, reserved MAC addresses, and optimized port forwarding to ensure consistent connectivity and performance.

### 🔹 B4.3 – Network Services
- Enabled access to the Minecraft server using the correct TCP port through port forwarding and network service configuration.

### 🔹 B4.4 – Workstation and Server Configuration
- Set up the server host to automatically run scripts at startup, assigned static IP, and granted required folder access permissions.

### 🔹 B4.5 – Troubleshooting
- Used ping, traceroute, and connection logs to diagnose connectivity issues between clients and the host machine.

---

## ✅ B5 – Programming Concepts

### 🔹 B5.1 – High- and Low-Level Languages
- Compared batch scripting (high-level) to low-level system tools like Volume Shadow Copy Service (VSS) for locked file handling.

### 🔹 B5.2 – Programming Logic
- Implemented loops, conditional logic (`IF`, `GOTO`), timers, and basic parameter handling in the backup and startup automation scripts.

---

## 🧠 Summary

This project incorporated essential concepts of **networking, scripting, system administration**, and **troubleshooting**, demonstrating direct application of TEJ4M1 curriculum expectations in a real-world context.