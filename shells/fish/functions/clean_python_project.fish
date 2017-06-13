function clean_python_project
    find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf
end
