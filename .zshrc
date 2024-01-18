PROMPT_EOL_MARK=''

alias java11='set_java_version 11'
alias java17='set_java_version 17'


function set_java_version() {
  version=$1
  echo "Running sudo update-alternatives --set java to $version"
  sudo update-alternatives --set java /usr/lib/jvm/java-${version}-openjdk-amd64/bin/java
  echo "Setting JAVA_HOME env"
  export JAVA_HOME=/usr/lib/jvm/java-${version}-openjdk-amd64
  echo "\njava --version:"
  java --version
  echo "\nJAVA_HOME is set to:"
  echo $JAVA_HOME

  sed -i "s|^export JAVA_HOME=.*|export JAVA_HOME=$JAVA_HOME|" ~/.zshrc
}


# The following are taken from https://github.com/Lundez/computer-setup
up() {
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}
mkcdir () {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}
