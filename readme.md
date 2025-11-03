
# Fitri AI 

**Fitri AI** adalah asisten AI lokal berbasis **Ollama**, dijalankan sepenuhnya melalui **Command Line Interface (CLI)**.  
Tidak membutuhkan koneksi internet maupun API key. Semua pemrosesan dilakukan **lokal di perangkat kamu**.

---

## Instalasi

### 1. Clone repositori ini
```bash
git clone https://github.com/Bangkah/fitri-1.1.git
cd fitri-1.1
````

### 2. Instal Ollama

#### 🔹 Windows

Unduh installer resmi dari:
   [https://ollama.com/download](https://ollama.com/download)

#### 🔹 Linux

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

#### 🔹 macOS

```bash
brew install ollama/tap/ollama
```

Setelah instalasi selesai, jalankan layanan Ollama:

```bash
ollama serve
```

---

## Penggunaan Fitri AI

### 1. Pastikan Ollama sudah berjalan

Cek dengan:

```bash
ollama list
```

Jika model belum tersedia, unduh model yang ingin digunakan, misalnya:

```bash
ollama pull llama3
```

### 2. Jalankan Fitri dari terminal

Gunakan perintah berikut di direktori proyek:

```bash
bash fitri.sh
```

### 3. Mulai berinteraksi

Kamu bisa langsung mengetik pertanyaan atau perintah seperti:

```
fitri> Apa itu AI?
```

Fitri akan menjawab langsung di terminal menggunakan model AI yang aktif.

### 4. Riwayat sesi

Fitri secara otomatis menyimpan riwayat percakapan di:

```
memory/session.txt
```

Kamu dapat menghapus file ini jika ingin memulai sesi baru.

---

## Fitur Utama

* Chat langsung dengan model AI lokal
* Tidak memerlukan koneksi internet
* Menyimpan riwayat sesi secara otomatis
* Privasi 100% — data tidak keluar dari perangkat

---

## Pengembangan Lanjutan

Fitri AI **saat ini hanya menggunakan CLI**,
namun masih **bisa dikembangkan** menjadi antarmuka lain seperti:

* Web UI sederhana (misal dengan Node.js, Flask, atau React)
* Desktop app (Electron)
* Integrasi terminal yang lebih interaktif (dengan input warna dan format markdown)

Jika kamu tertarik mengembangkan lebih lanjut, silakan:

**Buka issue baru** untuk ide, saran, atau bug
**Buat Pull Request (PR)** jika kamu ingin berkontribusi



---
