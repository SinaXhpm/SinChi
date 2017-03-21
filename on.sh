for entr in sinchi-*.sh ; do
    entry="${entr/.sh/}"
    tmux new-session -d -s $entry "./$entr"
  done
  echo 'On!'
