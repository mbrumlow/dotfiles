" Vim color file
" Author:       Michael Brumlow
" Maintainer:   mbrumlow <mbrumlow@gmail.com>
" Last Change:  27/Sep/2012

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="brumlar"

if ( &t_Co >= 255 || $TERM =~? "256color" ) || has("gui_running")
  
hi Normal         cterm=NONE ctermfg=248    ctermbg=NONE
hi Comment        cterm=NONE ctermfg=15    ctermbg=NONE

hi StatusLine     cterm=NONE ctermfg=3      ctermbg=236
hi StatusLineNC   cterm=NONE ctermfg=236    ctermbg=233
hi VertSplit      cterm=NONE ctermfg=236    ctermbg=NONE
hi NonText        cterm=NONE ctermfg=236    ctermbg=NONE
hi LineNr         cterm=NONE ctermfg=236    ctermbg=NONE
hi Todo           cterm=bold ctermfg=3      ctermbg=NONE
hi Type           cterm=NONE ctermfg=7      ctermbg=NONE
hi Structure      cterm=NONE ctermfg=7      ctermbg=NONE
hi String         cterm=NONE ctermfg=3      ctermbg=NONE
hi Character      cterm=NONE ctermfg=3      ctermbg=NONE
hi Label          cterm=NONE ctermfg=1      ctermbg=NONE
hi Number         cterm=NONE ctermfg=3      ctermbg=NONE
hi Macro          cterm=NONE ctermfg=98     ctermbg=NONE
hi ColorColumn    cterm=NONE ctermfg=NONE   ctermbg=233 


  hi Function       cterm=NONE ctermfg=3      ctermbg=NONE
 				
  hi Special        cterm=NONE ctermfg=3    ctermbg=NONE


  hi Tag            cterm=NONE ctermfg=3    ctermbg=NONE

  hi Title          cterm=NONE ctermfg=3    ctermbg=NONE


  hi Boolean        cterm=NONE ctermfg=33    ctermbg=NONE



  hi Conditional    cterm=NONE ctermfg=110    ctermbg=NONE

  hi Constant       cterm=bold ctermfg=239    ctermbg=NONE

  hi Cursor         cterm=NONE ctermfg=233    ctermbg=198

  hi CursorLine     cterm=NONE ctermfg=NONE   ctermbg=197

  hi CursorColumn   cterm=NONE ctermfg=NONE   ctermbg=197

  hi Debug          cterm=NONE ctermfg=181    ctermbg=NONE

  hi Define         cterm=NONE ctermfg=3     ctermbg=NONE

  hi Delimiter      cterm=NONE ctermfg=109    ctermbg=NONE

  hi DiffAdd        cterm=NONE ctermfg=66     ctermbg=237

  hi DiffChange     cterm=NONE ctermfg=NONE   ctermbg=236

  hi DiffRemoved    cterm=NONE ctermfg=167    ctermbg=NONE

  hi DiffText       cterm=NONE ctermfg=217    ctermbg=237

  hi Directory      cterm=NONE ctermfg=74     ctermbg=NONE

  hi ErrorMsg       cterm=NONE ctermfg=13     ctermbg=NONE

  hi Error          cterm=NONE ctermfg=167    ctermbg=52

  hi Exception      cterm=NONE ctermfg=249    ctermbg=NONE

  hi Float          cterm=NONE ctermfg=251    ctermbg=NONE

  hi FoldColumn     cterm=NONE ctermfg=97     ctermbg=238

  hi Folded         cterm=NONE ctermfg=67     ctermbg=16


  hi Identifier     cterm=NONE ctermfg=110    ctermbg=NONE

  hi IncSearch      cterm=NONE ctermfg=232    ctermbg=214

  hi Keyword        cterm=bold ctermfg=140    ctermbg=NONE




  hi ModeMsg        cterm=NONE ctermfg=99     ctermbg=NONE

  hi MoreMsg        cterm=NONE ctermfg=254    ctermbg=NONE



  hi Operator       cterm=NONE ctermfg=38     ctermbg=NONE

  hi PreCondit      cterm=NONE ctermfg=180    ctermbg=NONE

  hi Pmenu          cterm=NONE ctermfg=230    ctermbg=238

  hi PmenuSel       cterm=NONE ctermfg=232    ctermbg=192

  hi PreProc        cterm=NONE ctermfg=108    ctermbg=NONE

  hi Question       cterm=NONE ctermfg=37     ctermbg=NONE

  hi Repeat         cterm=NONE ctermfg=131    ctermbg=NONE

  hi Search         cterm=NONE ctermfg=232    ctermbg=103

  hi SpecialChar    cterm=NONE ctermfg=1    ctermbg=NONE

  hi SpecialComment cterm=NONE ctermfg=200    ctermbg=NONE


  hi SpecialKey     cterm=NONE ctermfg=236    ctermbg=NONE

  hi Statement      cterm=NONE ctermfg=103    ctermbg=NONE


  hi StorageClass   cterm=NONE ctermfg=249    ctermbg=NONE





  hi Typedef        cterm=NONE ctermfg=3    ctermbg=NONE


  hi Underlined     cterm=NONE ctermfg=32     ctermbg=NONE


  hi WarningMsg     cterm=NONE ctermfg=161    ctermbg=NONE

  hi WildMenu       cterm=NONE ctermfg=194    ctermbg=NONE
endif
