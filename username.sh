file=${1:-username-input}

if [ ! -f "$file" ]; then
  echo "File '$file' not found."
  exit 1
fi

while read username; do
  if [[ $username =~ ^[a-zA-Z][a-zA-Z0-9_]{2,15}$ ]]; then
    echo "$username → Valid username"
  else
    echo "$username → Invalid username"
  fi
done < "$file" 