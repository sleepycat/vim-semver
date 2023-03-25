" semver-helper.vim

function! s:IncrementSemverVersion(section)
    let l:currentLine = getline('.')
    let l:semverRegex = '\v(\d+)\.(\d+)\.(\d+)'
    let l:matchedSemver = matchlist(l:currentLine, l:semverRegex)

    if len(l:matchedSemver) > 0
        let l:major = l:matchedSemver[1]
        let l:minor = l:matchedSemver[2]
        let l:patch = l:matchedSemver[3]

        if a:section == 'major'
            let l:major += 1
            let l:minor = 0
            let l:patch = 0
        elseif a:section == 'minor'
            let l:minor += 1
            let l:patch = 0
        elseif a:section == 'patch'
            let l:patch += 1
        endif

        let l:newSemver = l:major . '.' . l:minor . '.' . l:patch
        let l:newLine = substitute(l:currentLine, l:semverRegex, l:newSemver, '')
        call setline('.', l:newLine)
    endif
endfunction

nnoremap <Leader>im :call <SID>IncrementSemverVersion('major')<CR>
nnoremap <Leader>in :call <SID>IncrementSemverVersion('minor')<CR>
nnoremap <Leader>ip :call <SID>IncrementSemverVersion('patch')<CR>

