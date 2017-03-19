for entr in sinchi-*.sh ; do
    entry="${entr/.sh/}"
    killall -9 $entr
    killall screen
  done
    echo 'Off!'
