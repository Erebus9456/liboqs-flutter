<div align="center">

# 🔐 liboqs_flutter

**Post-Quantum Cryptography for Android, made easy with Flutter**

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Platform](https://img.shields.io/badge/platform-Android-3DDC84?logo=android&logoColor=white)](#)
[![NIST PQC](https://img.shields.io/badge/NIST-Post--Quantum%20Cryptography-purple)](https://csrc.nist.gov/projects/post-quantum-cryptography)
[![Based on](https://img.shields.io/badge/based%20on-liboqs-orange)](https://github.com/open-quantum-safe/liboqs)
[![Stars](https://img.shields.io/github/stars/Erebus9456/liboqs_flutter?style=social)](https://github.com/Erebus9456/liboqs_flutter/stargazers)

</div>

---

## 📌 Overview

**liboqs_flutter** is a Flutter port of [**liboqs**](https://github.com/open-quantum-safe/liboqs) — the NIST-backed **Open Quantum Safe** C library — built so Android apps can use post-quantum-safe key encapsulation and digital signatures directly from Dart, without dealing with native bindings yourself.

Quantum computers threaten to break classical algorithms like RSA and ECC. This library gives you drop-in access to NIST's standardized and candidate post-quantum algorithms, so your Flutter app can be quantum-resistant today.

---

## 🚀 Getting Started

This is a direct port of [`liboqs`](https://github.com/open-quantum-safe/liboqs), giving you access to every algorithm supported by the NIST Open Quantum Safe project, callable from Flutter/Dart on Android.

```yaml
dependencies:
  liboqs_flutter: ^latest
```

```dart
import 'package:liboqs_flutter/liboqs_flutter.dart';

// Example: Kyber key encapsulation
final kem = OqsKem('Crystals-Kyber768');
final keypair = kem.generateKeypair();
final encapsulated = kem.encapsulate(keypair.publicKey);
```

> ℹ️ Exact API may vary — check `/example` in this repo for a working sample app.

---

## 🔑 Key Encapsulation Mechanisms (KEMs)

| Family | Variants |
|---|---|
| **BIKE** | BIKE-L1, BIKE-L3, BIKE-L5 |
| **Classic McEliece** | 348864†, 348864f†, 460896†, 460896f†, 6688128†, 6688128f†, 6960119†, 6960119f†, 8192128†, 8192128f† |
| **FrodoKEM** | 640-AES, 640-SHAKE, 976-AES, 976-SHAKE, 1344-AES, 1344-SHAKE |
| **HQC** | HQC-128, HQC-192, HQC-256† |
| **Kyber (CRYSTALS-Kyber)** | Kyber512, Kyber768, Kyber1024 |
| **NTRU-Prime** | sntrup761 |

---

## ✍️ Signature Schemes

| Family | Variants |
|---|---|
| **CRYSTALS-Dilithium** | Dilithium2, Dilithium3, Dilithium5 |
| **Falcon** | Falcon-512, Falcon-1024 |
| **SPHINCS+-SHA2** | 128f-simple, 128s-simple, 192f-simple, 192s-simple, 256f-simple, 256s-simple |
| **SPHINCS+-SHAKE** | 128f-simple, 128s-simple, 192f-simple, 192s-simple, 256f-simple, 256s-simple |

> † Not yet a NIST selected standard — included for research/experimentation per upstream liboqs.

---

## ✨ Why Use This?

- 🛡️ **Quantum-resistant by default** — built on NIST PQC finalists and candidates
- 📱 **Android-ready** — native liboqs compiled and bridged for Flutter, no manual NDK setup
- 🧩 **Drop-in algorithms** — swap KEMs/signature schemes without touching native code
- 🔓 **Open source** — built directly on the trusted, audited `liboqs` codebase

---

## 📚 Resources

- 🔗 Original library: [open-quantum-safe/liboqs](https://github.com/open-quantum-safe/liboqs)
- 🔗 NIST PQC Project: [csrc.nist.gov/projects/post-quantum-cryptography](https://csrc.nist.gov/projects/post-quantum-cryptography)

---

<div align="center">

Made with ❤️ to bring post-quantum security to mobile apps

</div>
