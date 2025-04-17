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
- The server’s CPU (6 cores @ 2.1 GHz) uses internal buses (e.g., data, address, control buses) to communicate between the processor, RAM, and storage.
- RAM running at 2400 MT/s benefits from a fast memory bus, which reduces latency when multiple players are connected to the Minecraft server.
- Efficient data transfer between the CPU, RAM, and SATA SSD improves game responsiveness, world loading, and backup performance.

### 🔹 A1.2 – Storage Devices for Server Needs
- The server uses a 256 GB **SATA SSD**, chosen for its speed and reliability over traditional HDDs.
- SSDs are essential for running Minecraft servers, reducing chunk loading times and enabling faster backups.
- The storage choice supports high read/write speeds necessary for hosting multiple players and handling frequent file access without lag.

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