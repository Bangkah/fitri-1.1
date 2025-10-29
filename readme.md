# Local AI Web App

Proyek ini adalah aplikasi web AI lokal yang terhubung dengan **Ollama**, memungkinkan Anda menjalankan model seperti **LLaMA 3**, **Mistral**, dan lainnya secara lokal tanpa koneksi internet.

## 🧠 Fitur Utama
- Jalankan model AI lokal dengan Ollama  
- UI web sederhana dan cepat  
- Tidak memerlukan akun API (offline)  

## ⚙️ Instalasi

### 1. Clone repositori
```bash
git clone https://github.com/username/local-ai-web.git
cd local-ai-web
````

### 2. Install Ollama

#### 🔹 Windows

Unduh dan install dari situs resmi:
👉 [https://ollama.com/download](https://ollama.com/download)

#### 🔹 Linux

```bash
curl -fsSL https://ollama.com/install.sh | sh
```

#### 🔹 macOS

```bash
brew install ollama/tap/ollama
```

### 3. Jalankan Ollama

```bash
ollama run llama3
```

Atau ganti `llama3` dengan model lain yang Anda inginkan (misalnya `mistral`, `gemma`, dll).

### 4. Install dependensi web app

```bash
npm install
```

### 5. Jalankan server lokal

```bash
npm start
```

Akses di browser:
👉 [http://localhost:3000](http://localhost:3000)

---

## 💡 Catatan

* Pastikan Ollama sudah berjalan di background sebelum membuka web.
* Model AI disimpan secara lokal di sistem Anda, jadi tidak memerlukan internet.

---

