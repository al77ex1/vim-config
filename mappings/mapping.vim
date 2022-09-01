" Resize pane
noremap <silent> <C-S-Left> :vertical resize -5<CR>
noremap <silent> <C-S-Right> :vertical resize +5<CR>
noremap <silent> <C-S-Up> :resize -5<CR>
noremap <silent> <C-S-Down> :resize +5<CR>

" Save file like VsCode
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>

" Tab switching
map gn :bn<cr>
map gp :bp<cr>
map gc :bd<cr>
" Close buffer, preserve window
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>


nmap <silent> <C-p> :Files<CR> " Fast file opening for search


" Clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" MAC os binding for NERDTree
nnoremap † <Esc> :NERDTreeToggle<CR> " ALT+T - toggle file
nnoremap ƒ <Esc> :NERDTreeFind<CR>== " ALT+F reveal current file in nerdtree
nnoremap ø :NERDTree<CR>== " ALT+O open nerdtree 

" FZF binding for file History
noremap ˙ <Esc> :History<CR>


" " Go debug
autocmd FileType go          nnoremap <buffer> <F5> :GoDebugStart<CR>
autocmd FileType go          nnoremap <buffer> <F4> :GoDebugBreakpoint<CR>
autocmd FileType go          nnoremap <buffer> <F6> :GoDebugNext<CR>
autocmd FileType go          nnoremap <buffer> <F7> :GoDebugContinue<CR>

" Git 
noremap gs <Esc> :Git<CR> " Get git status
noremap gl <Esc> :Gdiffsplit \| HEAD~1<CR> " Split git info for compare last commit


" nerdtree/vim-nerdtree-tabs
nnoremap <leader>[ :NERDTreeMirrorToggle<CR>
nnoremap <leader>t :tabnew<CR>

nnoremap <leader>[[ :MerginalToggle<CR>
nnoremap <leader>]] :MerginalClose<CR>

" ack.vim
cnoreabbrev Ack Ack!
cnoreabbrev ack Ack!
nnoremap <Leader>a :Ack!<Space>
nnoremap K :Ack! "\b<C-R><C-W>\b"<CR>:cw<CR>    " bind K to grep word under cursor

" Set encode
set wildmenu
set wcm=<Tab>
menu Encoding.Read.utf-8<Tab><F7> :e ++enc=utf8 <CR>
menu Encoding.Read.windows-1251<Tab><F7> :e ++enc=cp1251<CR>
menu Encoding.Read.koi8-r<Tab><F7> :e ++enc=koi8-r<CR>
menu Encoding.Read.cp866<Tab><F7> :e ++enc=cp866<CR>
map <F7> :emenu Encoding.Read.<TAB>

" History last of opened files
nnoremap <leader>o :MRU<CR>

" Go to home directory
nnoremap <leader><leader>0 :lcd ~<CR>
" Go to the open file directory
nnoremap <leader><leader>1 :cd %:p:h<CR>

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Support for commands in Cyrillic
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map . /

map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
map , ?

map ; $

" Console log from insert mode; Puts focus inside parentheses
imap cll console.log();<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap cll yiwocll<Esc>p

" Save file
nnoremap <F2> :w<CR>

" Compare two files of two windows
nnoremap <leader>dt :diffthis<CR>
nnoremap <leader>do :diffoff<CR>
nnoremap <leader>du :diffupdate<CR>

" View registers
nnoremap <leader>h :register<CR>

" No unselect block
vnoremap < <gv
vnoremap > >gv

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-n>     :tabnew<CR>
nnoremap <A-1>     1gt
nnoremap <A-2>     2gt
nnoremap <A-3>     3gt
nnoremap <A-4>     4gt
nnoremap <A-5>     5gt
nnoremap <A-6>     6gt
nnoremap <A-7>     7gt
nnoremap <A-8>     8gt
nnoremap <A-9>     :tablast<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>
inoremap <C-tab>   <Esc>:tabnext<CR>
inoremap <C-n>     <Esc>:tabnew<CR>
inoremap <A-1>     <Esc>1gt
inoremap <A-2>     <Esc>2gt
inoremap <A-3>     <Esc>3gt
inoremap <A-4>     <Esc>4gt
inoremap <A-5>     <Esc>5gt
inoremap <A-6>     <Esc>6gt
inoremap <A-7>     <Esc>7gt
inoremap <A-8>     <Esc>8gt
inoremap <A-9>     <Esc>:tablast<CR>
" for Mac
nnoremap <D-1>     1gt
nnoremap <D-2>     2gt
nnoremap <D-3>     3gt
nnoremap <D-4>     4gt
nnoremap <D-5>     5gt
nnoremap <D-6>     6gt
nnoremap <D-7>     7gt
nnoremap <D-8>     8gt
nnoremap <D-9>     :tablast<CR>
inoremap <D-1>     <Esc>1gt
inoremap <D-2>     <Esc>2gt
inoremap <D-3>     <Esc>3gt
inoremap <D-4>     <Esc>4gt
inoremap <D-5>     <Esc>5gt
inoremap <D-6>     <Esc>6gt
inoremap <D-7>     <Esc>7gt
inoremap <D-8>     <Esc>8gt
inoremap <D-9>     <Esc>:tablast<CR>
