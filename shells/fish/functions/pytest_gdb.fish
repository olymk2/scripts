function pytest_gdb
  gdb -ex r --args python -m pytest $argv
end
