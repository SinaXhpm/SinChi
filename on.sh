for entr in sinchi-*.sh ; do
    entry="${entr/.sh/}"
    screen ./$entr
  done
  echo 'On!'
