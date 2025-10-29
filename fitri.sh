#!/bin/bash
# fitri.sh — Interface sederhana untuk ngobrol dengan Fitri (offline, dengan memori)

MODEL="fitri"
MEMORY_FILE="memory/session.txt"
PROMPT_FILE=".fitri_prompt.tmp"

echo "🌸 Fitri siap membantu Atha. Ketik 'exit' untuk keluar."
echo "-----------------------------------------------"

# pastikan file memori ada
mkdir -p memory
touch "$MEMORY_FILE"

while true; do
  read -p "Atha: " input
  if [[ "$input" == "exit" ]]; then
    echo "Fitri: Sampai nanti ya, Atha 😊"
    break
  fi

  # Gabungkan memori + input baru jadi prompt
  echo "Berikut catatan sebelumnya dan input terbaru:" > "$PROMPT_FILE"
  echo "" >> "$PROMPT_FILE"
  cat "$MEMORY_FILE" >> "$PROMPT_FILE"
  echo "" >> "$PROMPT_FILE"
  echo "Percakapan terbaru:" >> "$PROMPT_FILE"
  echo "Atha: $input" >> "$PROMPT_FILE"
  echo "Fitri:" >> "$PROMPT_FILE"

  # Kirim ke Ollama dan ambil hasilnya
   response=$(cat "$PROMPT_FILE" | ollama run "$MODEL")



  # Tampilkan hasil ke layar
  echo "Fitri: $response"
  echo "" 

  # Simpan ke memori agar Fitri "ingat" obrolan
  echo "Atha: $input" >> "$MEMORY_FILE"
  echo "Fitri: $response" >> "$MEMORY_FILE"
  echo "" >> "$MEMORY_FILE"
done
