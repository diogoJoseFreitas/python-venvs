
alias py='python3'
alias disable='deactivate'

function venv {
  source ~/.python/venvs/$1/bin/activate
}

function create-venv {
  python3 -m venv ~/.python/venvs/$1
  venv $1
}

function list-venvs {
  ls ~/.python/venvs
}

function delete-venv {
  rm -r ~/.python/venvs/$1
}
