" unite source: webcolorname
"
" File: autoload/unite/sources/webcolorname.vim
" Version: 0.1
" Author: Yuki <paselan@gmail.com>
" License: MIT License {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}

let s:save_cpo = &cpo
set cpo&vim

" Web color names table. {{{
let s:WEB_COLOR_NAMES = [
      \ { 'name': 'black',                'rgb': [0,   0,   0],   'fg': 'white' },
      \ { 'name': 'dimgray',              'rgb': [105, 105, 105], 'fg': 'white' },
      \ { 'name': 'gray',                 'rgb': [128, 128, 128], 'fg': 'black' },
      \ { 'name': 'darkgray',             'rgb': [169, 169, 169], 'fg': 'black' },
      \ { 'name': 'silver',               'rgb': [192, 192, 192], 'fg': 'black' },
      \ { 'name': 'lightgrey',            'rgb': [211, 211, 211], 'fg': 'black' },
      \ { 'name': 'gainsboro',            'rgb': [220, 220, 220], 'fg': 'black' },
      \ { 'name': 'whitesmoke',           'rgb': [245, 245, 245], 'fg': 'black' },
      \ { 'name': 'white',                'rgb': [255, 255, 255], 'fg': 'black' },
      \ { 'name': 'snow',                 'rgb': [255, 250, 250], 'fg': 'black' },
      \ { 'name': 'ghostwhite',           'rgb': [248, 248, 255], 'fg': 'black' },
      \ { 'name': 'floralwhite',          'rgb': [255, 250, 240], 'fg': 'black' },
      \ { 'name': 'linen',                'rgb': [250, 240, 230], 'fg': 'black' },
      \ { 'name': 'antiquewhite',         'rgb': [250, 235, 215], 'fg': 'black' },
      \ { 'name': 'papayawhip',           'rgb': [255, 239, 213], 'fg': 'black' },
      \ { 'name': 'blanchedalmond',       'rgb': [255, 235, 205], 'fg': 'black' },
      \ { 'name': 'bisque',               'rgb': [255, 228, 196], 'fg': 'black' },
      \ { 'name': 'moccasin',             'rgb': [255, 228, 181], 'fg': 'black' },
      \ { 'name': 'navajowhite',          'rgb': [255, 222, 173], 'fg': 'black' },
      \ { 'name': 'peachpuff',            'rgb': [255, 218, 185], 'fg': 'black' },
      \ { 'name': 'mistyrose',            'rgb': [255, 228, 225], 'fg': 'black' },
      \ { 'name': 'lavenderblush',        'rgb': [255, 240, 245], 'fg': 'black' },
      \ { 'name': 'seashell',             'rgb': [255, 245, 238], 'fg': 'black' },
      \ { 'name': 'oldlace',              'rgb': [253, 245, 230], 'fg': 'black' },
      \ { 'name': 'ivory',                'rgb': [255, 255, 240], 'fg': 'black' },
      \ { 'name': 'honeydew',             'rgb': [240, 255, 240], 'fg': 'black' },
      \ { 'name': 'mintcream',            'rgb': [245, 255, 250], 'fg': 'black' },
      \ { 'name': 'azure',                'rgb': [240, 255, 255], 'fg': 'black' },
      \ { 'name': 'aliceblue',            'rgb': [240, 248, 255], 'fg': 'black' },
      \ { 'name': 'lavender',             'rgb': [230, 230, 250], 'fg': 'black' },
      \ { 'name': 'lightsteelblue',       'rgb': [176, 196, 222], 'fg': 'black' },
      \ { 'name': 'lightslategray',       'rgb': [119, 136, 153], 'fg': 'black' },
      \ { 'name': 'slategray',            'rgb': [112, 128, 144], 'fg': 'black' },
      \ { 'name': 'steelblue',            'rgb': [70,  130, 180], 'fg': 'black' },
      \ { 'name': 'royalblue',            'rgb': [65,  105, 225], 'fg': 'white' },
      \ { 'name': 'midnightblue',         'rgb': [25,  25,  112], 'fg': 'white' },
      \ { 'name': 'navy',                 'rgb': [0,   0,   128], 'fg': 'white' },
      \ { 'name': 'darkblue',             'rgb': [0,   0,   139], 'fg': 'white' },
      \ { 'name': 'mediumblue',           'rgb': [0,   0,   205], 'fg': 'white' },
      \ { 'name': 'blue',                 'rgb': [0,   0,   255], 'fg': 'white' },
      \ { 'name': 'dodgerblue',           'rgb': [30,  144, 255], 'fg': 'black' },
      \ { 'name': 'cornflowerblue',       'rgb': [100, 149, 237], 'fg': 'black' },
      \ { 'name': 'deepskyblue',          'rgb': [0,   191, 255], 'fg': 'black' },
      \ { 'name': 'lightskyblue',         'rgb': [135, 206, 250], 'fg': 'black' },
      \ { 'name': 'skyblue',              'rgb': [135, 206, 235], 'fg': 'black' },
      \ { 'name': 'lightblue',            'rgb': [173, 216, 230], 'fg': 'black' },
      \ { 'name': 'powderblue',           'rgb': [176, 224, 230], 'fg': 'black' },
      \ { 'name': 'paleturquoise',        'rgb': [175, 238, 238], 'fg': 'black' },
      \ { 'name': 'lightcyan',            'rgb': [224, 255, 255], 'fg': 'black' },
      \ { 'name': 'cyan',                 'rgb': [0,   255, 255], 'fg': 'black' },
      \ { 'name': 'aqua',                 'rgb': [0,   255, 255], 'fg': 'black' },
      \ { 'name': 'turquoise',            'rgb': [64,  224, 208], 'fg': 'black' },
      \ { 'name': 'mediumturquoise',      'rgb': [72,  209, 204], 'fg': 'black' },
      \ { 'name': 'darkturquoise',        'rgb': [0,   206, 209], 'fg': 'black' },
      \ { 'name': 'lightseagreen',        'rgb': [32,  178, 170], 'fg': 'black' },
      \ { 'name': 'cadetblue',            'rgb': [95,  158, 160], 'fg': 'black' },
      \ { 'name': 'darkcyan',             'rgb': [0,   139, 139], 'fg': 'white' },
      \ { 'name': 'teal',                 'rgb': [0,   128, 128], 'fg': 'white' },
      \ { 'name': 'darkslategray',        'rgb': [47,  79,  79],  'fg': 'white' },
      \ { 'name': 'darkgreen',            'rgb': [0,   100, 0],   'fg': 'white' },
      \ { 'name': 'green',                'rgb': [0,   128, 0],   'fg': 'white' },
      \ { 'name': 'forestgreen',          'rgb': [34,  139, 34],  'fg': 'white' },
      \ { 'name': 'seagreen',             'rgb': [46,  139, 87],  'fg': 'white' },
      \ { 'name': 'mediumseagreen',       'rgb': [60,  179, 113], 'fg': 'black' },
      \ { 'name': 'mediumaquamarine',     'rgb': [102, 205, 170], 'fg': 'black' },
      \ { 'name': 'darkseagreen',         'rgb': [143, 188, 143], 'fg': 'black' },
      \ { 'name': 'aquamarine',           'rgb': [127, 255, 212], 'fg': 'black' },
      \ { 'name': 'palegreen',            'rgb': [152, 251, 152], 'fg': 'black' },
      \ { 'name': 'lightgreen',           'rgb': [144, 238, 144], 'fg': 'black' },
      \ { 'name': 'springgreen',          'rgb': [0,   255, 127], 'fg': 'black' },
      \ { 'name': 'mediumspringgreen',    'rgb': [0,   250, 154], 'fg': 'black' },
      \ { 'name': 'lawngreen',            'rgb': [124, 252, 0],   'fg': 'black' },
      \ { 'name': 'chartreuse',           'rgb': [127, 255, 0],   'fg': 'black' },
      \ { 'name': 'greenyellow',          'rgb': [173, 255, 47],  'fg': 'black' },
      \ { 'name': 'lime',                 'rgb': [0,   255, 0],   'fg': 'black' },
      \ { 'name': 'limegreen',            'rgb': [50,  205, 50],  'fg': 'black' },
      \ { 'name': 'yellowgreen',          'rgb': [154, 205, 50],  'fg': 'black' },
      \ { 'name': 'darkolivegreen',       'rgb': [85,  107, 47],  'fg': 'white' },
      \ { 'name': 'olivedrab',            'rgb': [107, 142, 35],  'fg': 'black' },
      \ { 'name': 'olive',                'rgb': [128, 128, 0],   'fg': 'black' },
      \ { 'name': 'darkkhaki',            'rgb': [189, 183, 107], 'fg': 'black' },
      \ { 'name': 'palegoldenrod',        'rgb': [238, 232, 170], 'fg': 'black' },
      \ { 'name': 'cornsilk',             'rgb': [255, 248, 220], 'fg': 'black' },
      \ { 'name': 'beige',                'rgb': [245, 245, 220], 'fg': 'black' },
      \ { 'name': 'lightyellow',          'rgb': [255, 255, 224], 'fg': 'black' },
      \ { 'name': 'lightgoldenrodyellow', 'rgb': [250, 250, 210], 'fg': 'black' },
      \ { 'name': 'lemonchiffon',         'rgb': [255, 250, 205], 'fg': 'black' },
      \ { 'name': 'wheat',                'rgb': [245, 222, 179], 'fg': 'black' },
      \ { 'name': 'burlywood',            'rgb': [222, 184, 135], 'fg': 'black' },
      \ { 'name': 'tan',                  'rgb': [210, 180, 140], 'fg': 'black' },
      \ { 'name': 'khaki',                'rgb': [240, 230, 140], 'fg': 'black' },
      \ { 'name': 'yellow',               'rgb': [255, 255, 0],   'fg': 'black' },
      \ { 'name': 'gold',                 'rgb': [255, 215, 0],   'fg': 'black' },
      \ { 'name': 'orange',               'rgb': [255, 165, 0],   'fg': 'black' },
      \ { 'name': 'sandybrown',           'rgb': [244, 164, 96],  'fg': 'black' },
      \ { 'name': 'darkorange',           'rgb': [255, 140, 0],   'fg': 'black' },
      \ { 'name': 'goldenrod',            'rgb': [218, 165, 32],  'fg': 'black' },
      \ { 'name': 'peru',                 'rgb': [205, 133, 63],  'fg': 'black' },
      \ { 'name': 'darkgoldenrod',        'rgb': [184, 134, 11],  'fg': 'black' },
      \ { 'name': 'chocolate',            'rgb': [210, 105, 30],  'fg': 'black' },
      \ { 'name': 'sienna',               'rgb': [160, 82,  45],  'fg': 'white' },
      \ { 'name': 'saddlebrown',          'rgb': [139, 69,  19],  'fg': 'white' },
      \ { 'name': 'maroon',               'rgb': [128, 0,   0],   'fg': 'white' },
      \ { 'name': 'darkred',              'rgb': [139, 0,   0],   'fg': 'white' },
      \ { 'name': 'brown',                'rgb': [165, 42,  42],  'fg': 'white' },
      \ { 'name': 'firebrick',            'rgb': [178, 34,  34],  'fg': 'white' },
      \ { 'name': 'indianred',            'rgb': [205, 92,  92],  'fg': 'black' },
      \ { 'name': 'rosybrown',            'rgb': [188, 143, 143], 'fg': 'black' },
      \ { 'name': 'darksalmon',           'rgb': [233, 150, 122], 'fg': 'black' },
      \ { 'name': 'lightcoral',           'rgb': [240, 128, 128], 'fg': 'black' },
      \ { 'name': 'salmon',               'rgb': [250, 128, 114], 'fg': 'black' },
      \ { 'name': 'lightsalmon',          'rgb': [255, 160, 122], 'fg': 'black' },
      \ { 'name': 'coral',                'rgb': [255, 127, 80],  'fg': 'black' },
      \ { 'name': 'tomato',               'rgb': [255, 99,  71],  'fg': 'black' },
      \ { 'name': 'orangered',            'rgb': [255, 69,  0],   'fg': 'black' },
      \ { 'name': 'red',                  'rgb': [255, 0,   0],   'fg': 'black' },
      \ { 'name': 'crimson',              'rgb': [220, 20,  60],  'fg': 'black' },
      \ { 'name': 'mediumvioletred',      'rgb': [199, 21,  133], 'fg': 'black' },
      \ { 'name': 'deeppink',             'rgb': [255, 20,  147], 'fg': 'black' },
      \ { 'name': 'hotpink',              'rgb': [255, 105, 180], 'fg': 'black' },
      \ { 'name': 'palevioletred',        'rgb': [219, 112, 147], 'fg': 'black' },
      \ { 'name': 'pink',                 'rgb': [255, 192, 203], 'fg': 'black' },
      \ { 'name': 'lightpink',            'rgb': [255, 182, 193], 'fg': 'black' },
      \ { 'name': 'thistle',              'rgb': [216, 191, 216], 'fg': 'black' },
      \ { 'name': 'magenta',              'rgb': [255, 0,   255], 'fg': 'black' },
      \ { 'name': 'fuchsia',              'rgb': [255, 0,   255], 'fg': 'black' },
      \ { 'name': 'violet',               'rgb': [238, 130, 238], 'fg': 'black' },
      \ { 'name': 'plum',                 'rgb': [221, 160, 221], 'fg': 'black' },
      \ { 'name': 'orchid',               'rgb': [218, 112, 214], 'fg': 'black' },
      \ { 'name': 'mediumorchid',         'rgb': [186, 85,  211], 'fg': 'black' },
      \ { 'name': 'darkorchid',           'rgb': [153, 50,  204], 'fg': 'white' },
      \ { 'name': 'darkviolet',           'rgb': [148, 0,   211], 'fg': 'white' },
      \ { 'name': 'darkmagenta',          'rgb': [139, 0,   139], 'fg': 'white' },
      \ { 'name': 'purple',               'rgb': [128, 0,   128], 'fg': 'white' },
      \ { 'name': 'indigo',               'rgb': [75,  0,   130], 'fg': 'white' },
      \ { 'name': 'darkslateblue',        'rgb': [72,  61,  139], 'fg': 'white' },
      \ { 'name': 'blueviolet',           'rgb': [138, 43,  226], 'fg': 'white' },
      \ { 'name': 'mediumpurple',         'rgb': [147, 112, 219], 'fg': 'black' },
      \ { 'name': 'slateblue',            'rgb': [106, 90,  205], 'fg': 'white' },
      \ { 'name': 'mediumslateblue',      'rgb': [123, 104, 238], 'fg': 'black' },
      \ ]
" }}}

" Formats for yank and insert.
let s:formats = {
      \ 'hex': '#%02x%02x%02x',
      \ 'rgb': 'rgb(%d,%d,%d)',
      \ }

let s:source = {
      \ 'name' : 'webcolorname',
      \ 'description' : 'Web color names',
      \ 'syntax': 'uniteSource__webcolorname',
      \ 'action_table' : {},
      \ 'hooks': {},
      \ }

function! s:source.gather_candidates(args, context)
  let candidates = []

  let index = 0
  for color in s:WEB_COLOR_NAMES
    let hex = call('s:rgb2hex', color.rgb)
    call add(candidates, {
          \ 'word': color.name,
          \ 'abbr': printf('%-24s (%s)  RGB(%3d,%3d,%3d)', color.name, hex,
          \           color.rgb[0], color.rgb[1], color.rgb[2]),
          \ 'kind': 'word',
          \ 'source__color_index': index,
          \ })
    let index = index + 1
  endfor

  return candidates
endfunction

" Hooks {{{
function! s:source.hooks.on_syntax(args, context)
  for color in s:WEB_COLOR_NAMES
    let hex = call('s:rgb2hex', color.rgb)
    let pindex = call('s:get_palette_index', color.rgb)

    let group = 'uniteSource__webcolorname_' . color.name
    let pattern = '/\s*' . color.name . '.*/'
    execute 'syntax match ' . group . ' ' . pattern . ' contained containedin=uniteSource__webcolorname'
    execute 'highlight default ' . group . ' guibg=' . hex . ' guifg=' . color.fg
          \ . ' ctermfg=' . color.fg . ' ctermbg=' . pindex
  endfor
endfunction
" }}}

" Actions {{{
function! s:yank_format(format, candidate)
  let color = s:WEB_COLOR_NAMES[a:candidate.source__color_index]
  let @" = printf(a:format, color.rgb[0], color.rgb[1], color.rgb[2])
endfunction

let s:source.action_table.yank_hex = {
      \ 'description' : 'yank HEX value "#rrggbb"',
      \ }
function! s:source.action_table.yank_hex.func(candidate)
  call s:yank_format(s:formats.hex, a:candidate)
endfunction

let s:source.action_table.yank_rgb = {
      \ 'description': 'yank RGB value "rgb(r,g,b)"',
      \ }
function! s:source.action_table.yank_rgb.func(candidate)
  call s:yank_format(s:formats.rgb, a:candidate)
endfunction

function! s:insert_format(format, candidate)
  let color = s:WEB_COLOR_NAMES[a:candidate.source__color_index]
  let value = printf(a:format, color.rgb[0], color.rgb[1], color.rgb[2])

  let context = unite#get_current_unite().context

  if !context.complete
    " Paste.
    let old_reg = @"
    let @" = value
    normal! ""p
    let @" = old_reg

    return
  endif

  let cur_text = matchstr(getline('.'), '^.*\%'
        \ . (context.col-1) . 'c.')

  let next_line = getline('.')[context.col :]
  call setline(line('.'),
        \ split(cur_text . value . next_line,
        \            '\n\|\r\n'))
  let next_col = len(cur_text)+len(value)+1
  call cursor('', next_col)

  if next_col < col('$')
    startinsert
  else
    startinsert!
  endif
endfunction

let s:source.action_table.insert_hex = {
      \ 'description' : 'insert HEX value "#rrggbb"',
      \ }
function! s:source.action_table.insert_hex.func(candidate)
  call s:insert_format(s:formats.hex, a:candidate)
endfunction

let s:source.action_table.insert_rgb = {
      \ 'description' : 'insert RGB value "rgb(r,g,b)"',
      \ }
function! s:source.action_table.insert_rgb.func(candidate)
  call s:insert_format(s:formats.rgb, a:candidate)
endfunction
" }}}

function! unite#sources#webcolorname#define()
  return s:source
endfunction

" Utilities {{{

" RGB values to '#rrggbb'.
function! s:rgb2hex(r, g, b)
  return printf("#%02x%02x%02x", a:r, a:g, a:b)
endfunction

" '#rrggbb' to RGB values array.
function! s:hex2rgb(rrggbb)
  let offset = 0
  if a:rrggbb[0] == '#'
    let offset = 1
  endif

  return [
        \ ("0x" . strpart(a:rrggbb, 0 + offset, 2)) + 0,
        \ ("0x" . strpart(a:rrggbb, 2 + offset, 2)) + 0,
        \ ("0x" . strpart(a:rrggbb, 4 + offset, 2)) + 0
        \ ]
endfunction

" returns an approximate grey index for the given grey level
function! s:grey_level2number(x)
  if &t_Co == 88
    if a:x < 23
      return 0
    elseif a:x < 69
      return 1
    elseif a:x < 103
      return 2
    elseif a:x < 127
      return 3
    elseif a:x < 150
      return 4
    elseif a:x < 173
      return 5
    elseif a:x < 196
      return 6
    elseif a:x < 219
      return 7
    elseif a:x < 243
      return 8
    else
      return 9
    endif
  else
    if a:x < 14
      return 0
    else
      let l:n = (a:x - 8) / 10
      let l:m = (a:x - 8) % 10
      if l:m < 5
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfunction

" returns the actual grey level represented by the grey index
function! s:grey_number2level(n)
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 46
    elseif a:n == 2
      return 92
    elseif a:n == 3
      return 115
    elseif a:n == 4
      return 139
    elseif a:n == 5
      return 162
    elseif a:n == 6
      return 185
    elseif a:n == 7
      return 208
    elseif a:n == 8
      return 231
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 8 + (a:n * 10)
    endif
  endif
endfunction

" returns the palette index for the given grey index
function! s:grey_color2index(n)
  if &t_Co == 88
    if a:n == 0
      return 16
    elseif a:n == 9
      return 79
    else
      return 79 + a:n
    endif
  else
    if a:n == 0
      return 16
    elseif a:n == 25
      return 231
    else
      return 231 + a:n
    endif
  endif
endfunction

" returns an approximate color index for the given color level
function! s:rgb_level2number(x)
  if &t_Co == 88
    if a:x < 69
      return 0
    elseif a:x < 172
      return 1
    elseif a:x < 230
      return 2
    else
      return 3
    endif
  else
    if a:x < 75
      return 0
    else
      let l:n = (a:x - 55) / 40
      let l:m = (a:x - 55) % 40
      if l:m < 20
        return l:n
      else
        return l:n + 1
      endif
    endif
  endif
endfunction

" returns the actual color level for the given color index
function! s:rgb_number2level(n)
  if &t_Co == 88
    if a:n == 0
      return 0
    elseif a:n == 1
      return 139
    elseif a:n == 2
      return 205
    else
      return 255
    endif
  else
    if a:n == 0
      return 0
    else
      return 55 + (a:n * 40)
    endif
  endif
endfunction

" returns the palette index for the given R/G/B color indices
function! s:rgb_color2index(x, y, z)
  if &t_Co == 88
    return 16 + (a:x * 16) + (a:y * 4) + a:z
  else
    return 16 + (a:x * 36) + (a:y * 6) + a:z
  endif
endfunction

" returns the palette index to approximate the given R/G/B color levels
function! s:get_palette_index(r, g, b)
  " get the closest grey
  let l:gx = s:grey_level2number(a:r)
  let l:gy = s:grey_level2number(a:g)
  let l:gz = s:grey_level2number(a:b)

  " get the closest color
  let l:x = s:rgb_level2number(a:r)
  let l:y = s:rgb_level2number(a:g)
  let l:z = s:rgb_level2number(a:b)

  if l:gx == l:gy && l:gy == l:gz
    " there are two possibilities
    let l:dgr = s:grey_number2level(l:gx) - a:r
    let l:dgg = s:grey_number2level(l:gy) - a:g
    let l:dgb = s:grey_number2level(l:gz) - a:b
    let l:dgrey = (l:dgr * l:dgr) + (l:dgg * l:dgg) + (l:dgb * l:dgb)
    let l:dr = s:rgb_number2level(l:gx) - a:r
    let l:dg = s:rgb_number2level(l:gy) - a:g
    let l:db = s:rgb_number2level(l:gz) - a:b
    let l:drgb = (l:dr * l:dr) + (l:dg * l:dg) + (l:db * l:db)
    if l:dgrey < l:drgb
      " use the grey
      return s:grey_color2index(l:gx)
    else
      " use the color
      return s:rgb_color2index(l:x, l:y, l:z)
    endif
  else
    " only one possibility
    return s:rgb_color2index(l:x, l:y, l:z)
  endif
endfunction

" }}}

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set fdm=marker:
