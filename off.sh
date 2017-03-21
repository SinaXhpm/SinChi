for entr in sinchi-*.sh ; do
    entry="${entr/.sh/}"
    tmux kill-session -t $entry
  done
  
    echo 'Off!'
