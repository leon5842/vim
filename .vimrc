set encoding=utf-8
syntax on
set nocompatible
set shiftwidth=4
set tabstop=4
set ruler
set hlsearch
set incsearch
set smartindent
set nocp
filetype plugin on
set laststatus=2
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v. \+/

"========= Tag List settings ======
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 35
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1

"========== remap hotkeys
map <F8> :!cscope -b<CR>:cs reset<CR><CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :bp<CR>
nnoremap <F4> :bn<CR>
nnoremap <silent> <F12> :Tlist<CR>


let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

if executable('ag')
	set greprg = ag\ -nogroup\ --nocolor
	let g:ctrlp_user_command = 'ag %s --nocolor -g""'
	let g:ctrlp_use_caching = 0
endif

"nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR>

