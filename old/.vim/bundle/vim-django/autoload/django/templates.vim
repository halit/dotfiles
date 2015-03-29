function! django#templates#find(name)
    let file_regex = '**/templates/'.a:name
    let possible_paths = split(globpath(g:django_project_directory, file_regex))
    return possible_paths
endfunction
