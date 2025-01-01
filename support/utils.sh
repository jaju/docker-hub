download() {
  local url="$1"
  local localfile="$2"
  if [ ! -f "$localfile" ]; then
    curl -L "$url" -o "$localfile"
  else
    echo "File $localfile already exists. Skipping download."
  fi
}
