ENCRYPTED_PASSWORD_FILE=~/cipher
CLEAR_PASSWORD=true
PASSWORD_CLEAR_TIME=10

passwordmanager() {
  openssl aes-256-cbc -in $ENCRYPTED_PASSWORD_FILE -d | grep $1 | awk '{print $NF}' | pbcopy
  echo "Password for" $1 "copied to clipboard"
  if [ $CLEAR_PASSWORD = true ] ; then
      sleep $PASSWORD_CLEAR_TIME
      echo '' | pbcopy
      echo "Clipboard cleared"
  fi
}

alias pass=passwordmanager
