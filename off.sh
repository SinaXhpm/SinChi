for entr in sinchi-*.sh ; do
    entry="${entr/.sh/}"
    killall -9 $entr
  done
   killall screen
    echo 'Off!'
