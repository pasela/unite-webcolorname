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

let s:WEB_COLOR_NAMES = [
      \ { 'name': 'black',                'hex': '#000000', 'fg': '#ffffff' },
      \ { 'name': 'dimgray',              'hex': '#696969', 'fg': '#ffffff' },
      \ { 'name': 'gray',                 'hex': '#808080', 'fg': '#000000' },
      \ { 'name': 'darkgray',             'hex': '#a9a9a9', 'fg': '#000000' },
      \ { 'name': 'silver',               'hex': '#c0c0c0', 'fg': '#000000' },
      \ { 'name': 'lightgrey',            'hex': '#d3d3d3', 'fg': '#000000' },
      \ { 'name': 'gainsboro',            'hex': '#dcdcdc', 'fg': '#000000' },
      \ { 'name': 'whitesmoke',           'hex': '#f5f5f5', 'fg': '#000000' },
      \ { 'name': 'white',                'hex': '#ffffff', 'fg': '#000000' },
      \ { 'name': 'snow',                 'hex': '#fffafa', 'fg': '#000000' },
      \ { 'name': 'ghostwhite',           'hex': '#f8f8ff', 'fg': '#000000' },
      \ { 'name': 'floralwhite',          'hex': '#fffaf0', 'fg': '#000000' },
      \ { 'name': 'linen',                'hex': '#faf0e6', 'fg': '#000000' },
      \ { 'name': 'antiquewhite',         'hex': '#faebd7', 'fg': '#000000' },
      \ { 'name': 'papayawhip',           'hex': '#ffefd5', 'fg': '#000000' },
      \ { 'name': 'blanchedalmond',       'hex': '#ffebcd', 'fg': '#000000' },
      \ { 'name': 'bisque',               'hex': '#ffe4c4', 'fg': '#000000' },
      \ { 'name': 'moccasin',             'hex': '#ffe4b5', 'fg': '#000000' },
      \ { 'name': 'navajowhite',          'hex': '#ffdead', 'fg': '#000000' },
      \ { 'name': 'peachpuff',            'hex': '#ffdab9', 'fg': '#000000' },
      \ { 'name': 'mistyrose',            'hex': '#ffe4e1', 'fg': '#000000' },
      \ { 'name': 'lavenderblush',        'hex': '#fff0f5', 'fg': '#000000' },
      \ { 'name': 'seashell',             'hex': '#fff5ee', 'fg': '#000000' },
      \ { 'name': 'oldlace',              'hex': '#fdf5e6', 'fg': '#000000' },
      \ { 'name': 'ivory',                'hex': '#fffff0', 'fg': '#000000' },
      \ { 'name': 'honeydew',             'hex': '#f0fff0', 'fg': '#000000' },
      \ { 'name': 'mintcream',            'hex': '#f5fffa', 'fg': '#000000' },
      \ { 'name': 'azure',                'hex': '#f0ffff', 'fg': '#000000' },
      \ { 'name': 'aliceblue',            'hex': '#f0f8ff', 'fg': '#000000' },
      \ { 'name': 'lavender',             'hex': '#e6e6fa', 'fg': '#000000' },
      \ { 'name': 'lightsteelblue',       'hex': '#b0c4de', 'fg': '#000000' },
      \ { 'name': 'lightslategray',       'hex': '#778899', 'fg': '#000000' },
      \ { 'name': 'slategray',            'hex': '#708090', 'fg': '#000000' },
      \ { 'name': 'steelblue',            'hex': '#4682b4', 'fg': '#000000' },
      \ { 'name': 'royalblue',            'hex': '#4169e1', 'fg': '#ffffff' },
      \ { 'name': 'midnightblue',         'hex': '#191970', 'fg': '#ffffff' },
      \ { 'name': 'navy',                 'hex': '#000080', 'fg': '#ffffff' },
      \ { 'name': 'darkblue',             'hex': '#00008b', 'fg': '#ffffff' },
      \ { 'name': 'mediumblue',           'hex': '#0000cd', 'fg': '#ffffff' },
      \ { 'name': 'blue',                 'hex': '#0000ff', 'fg': '#ffffff' },
      \ { 'name': 'dodgerblue',           'hex': '#1e90ff', 'fg': '#000000' },
      \ { 'name': 'cornflowerblue',       'hex': '#6495ed', 'fg': '#000000' },
      \ { 'name': 'deepskyblue',          'hex': '#00bfff', 'fg': '#000000' },
      \ { 'name': 'lightskyblue',         'hex': '#87cefa', 'fg': '#000000' },
      \ { 'name': 'skyblue',              'hex': '#87ceeb', 'fg': '#000000' },
      \ { 'name': 'lightblue',            'hex': '#add8e6', 'fg': '#000000' },
      \ { 'name': 'powderblue',           'hex': '#b0e0e6', 'fg': '#000000' },
      \ { 'name': 'paleturquoise',        'hex': '#afeeee', 'fg': '#000000' },
      \ { 'name': 'lightcyan',            'hex': '#e0ffff', 'fg': '#000000' },
      \ { 'name': 'cyan',                 'hex': '#00ffff', 'fg': '#000000' },
      \ { 'name': 'aqua',                 'hex': '#00ffff', 'fg': '#000000' },
      \ { 'name': 'turquoise',            'hex': '#40e0d0', 'fg': '#000000' },
      \ { 'name': 'mediumturquoise',      'hex': '#48d1cc', 'fg': '#000000' },
      \ { 'name': 'darkturquoise',        'hex': '#00ced1', 'fg': '#000000' },
      \ { 'name': 'lightseagreen',        'hex': '#20b2aa', 'fg': '#000000' },
      \ { 'name': 'cadetblue',            'hex': '#5f9ea0', 'fg': '#000000' },
      \ { 'name': 'darkcyan',             'hex': '#008b8b', 'fg': '#ffffff' },
      \ { 'name': 'teal',                 'hex': '#008080', 'fg': '#ffffff' },
      \ { 'name': 'darkslategray',        'hex': '#2f4f4f', 'fg': '#ffffff' },
      \ { 'name': 'darkgreen',            'hex': '#006400', 'fg': '#ffffff' },
      \ { 'name': 'green',                'hex': '#008000', 'fg': '#ffffff' },
      \ { 'name': 'forestgreen',          'hex': '#228b22', 'fg': '#ffffff' },
      \ { 'name': 'seagreen',             'hex': '#2e8b57', 'fg': '#ffffff' },
      \ { 'name': 'mediumseagreen',       'hex': '#3cb371', 'fg': '#000000' },
      \ { 'name': 'mediumaquamarine',     'hex': '#66cdaa', 'fg': '#000000' },
      \ { 'name': 'darkseagreen',         'hex': '#8fbc8f', 'fg': '#000000' },
      \ { 'name': 'aquamarine',           'hex': '#7fffd4', 'fg': '#000000' },
      \ { 'name': 'palegreen',            'hex': '#98fb98', 'fg': '#000000' },
      \ { 'name': 'lightgreen',           'hex': '#90ee90', 'fg': '#000000' },
      \ { 'name': 'springgreen',          'hex': '#00ff7f', 'fg': '#000000' },
      \ { 'name': 'mediumspringgreen',    'hex': '#00fa9a', 'fg': '#000000' },
      \ { 'name': 'lawngreen',            'hex': '#7cfc00', 'fg': '#000000' },
      \ { 'name': 'chartreuse',           'hex': '#7fff00', 'fg': '#000000' },
      \ { 'name': 'greenyellow',          'hex': '#adff2f', 'fg': '#000000' },
      \ { 'name': 'lime',                 'hex': '#00ff00', 'fg': '#000000' },
      \ { 'name': 'limegreen',            'hex': '#32cd32', 'fg': '#000000' },
      \ { 'name': 'yellowgreen',          'hex': '#9acd32', 'fg': '#000000' },
      \ { 'name': 'darkolivegreen',       'hex': '#556b2f', 'fg': '#ffffff' },
      \ { 'name': 'olivedrab',            'hex': '#6b8e23', 'fg': '#000000' },
      \ { 'name': 'olive',                'hex': '#808000', 'fg': '#000000' },
      \ { 'name': 'darkkhaki',            'hex': '#bdb76b', 'fg': '#000000' },
      \ { 'name': 'palegoldenrod',        'hex': '#eee8aa', 'fg': '#000000' },
      \ { 'name': 'cornsilk',             'hex': '#fff8dc', 'fg': '#000000' },
      \ { 'name': 'beige',                'hex': '#f5f5dc', 'fg': '#000000' },
      \ { 'name': 'lightyellow',          'hex': '#ffffe0', 'fg': '#000000' },
      \ { 'name': 'lightgoldenrodyellow', 'hex': '#fafad2', 'fg': '#000000' },
      \ { 'name': 'lemonchiffon',         'hex': '#fffacd', 'fg': '#000000' },
      \ { 'name': 'wheat',                'hex': '#f5deb3', 'fg': '#000000' },
      \ { 'name': 'burlywood',            'hex': '#deb887', 'fg': '#000000' },
      \ { 'name': 'tan',                  'hex': '#d2b48c', 'fg': '#000000' },
      \ { 'name': 'khaki',                'hex': '#f0e68c', 'fg': '#000000' },
      \ { 'name': 'yellow',               'hex': '#ffff00', 'fg': '#000000' },
      \ { 'name': 'gold',                 'hex': '#ffd700', 'fg': '#000000' },
      \ { 'name': 'orange',               'hex': '#ffa500', 'fg': '#000000' },
      \ { 'name': 'sandybrown',           'hex': '#f4a460', 'fg': '#000000' },
      \ { 'name': 'darkorange',           'hex': '#ff8c00', 'fg': '#000000' },
      \ { 'name': 'goldenrod',            'hex': '#daa520', 'fg': '#000000' },
      \ { 'name': 'peru',                 'hex': '#cd853f', 'fg': '#000000' },
      \ { 'name': 'darkgoldenrod',        'hex': '#b8860b', 'fg': '#000000' },
      \ { 'name': 'chocolate',            'hex': '#d2691e', 'fg': '#000000' },
      \ { 'name': 'sienna',               'hex': '#a0522d', 'fg': '#ffffff' },
      \ { 'name': 'saddlebrown',          'hex': '#8b4513', 'fg': '#ffffff' },
      \ { 'name': 'maroon',               'hex': '#800000', 'fg': '#ffffff' },
      \ { 'name': 'darkred',              'hex': '#8b0000', 'fg': '#ffffff' },
      \ { 'name': 'brown',                'hex': '#a52a2a', 'fg': '#ffffff' },
      \ { 'name': 'firebrick',            'hex': '#b22222', 'fg': '#ffffff' },
      \ { 'name': 'indianred',            'hex': '#cd5c5c', 'fg': '#000000' },
      \ { 'name': 'rosybrown',            'hex': '#bc8f8f', 'fg': '#000000' },
      \ { 'name': 'darksalmon',           'hex': '#e9967a', 'fg': '#000000' },
      \ { 'name': 'lightcoral',           'hex': '#f08080', 'fg': '#000000' },
      \ { 'name': 'salmon',               'hex': '#fa8072', 'fg': '#000000' },
      \ { 'name': 'lightsalmon',          'hex': '#ffa07a', 'fg': '#000000' },
      \ { 'name': 'coral',                'hex': '#ff7f50', 'fg': '#000000' },
      \ { 'name': 'tomato',               'hex': '#ff6347', 'fg': '#000000' },
      \ { 'name': 'orangered',            'hex': '#ff4500', 'fg': '#000000' },
      \ { 'name': 'red',                  'hex': '#ff0000', 'fg': '#000000' },
      \ { 'name': 'crimson',              'hex': '#dc143c', 'fg': '#000000' },
      \ { 'name': 'mediumvioletred',      'hex': '#c71585', 'fg': '#000000' },
      \ { 'name': 'deeppink',             'hex': '#ff1493', 'fg': '#000000' },
      \ { 'name': 'hotpink',              'hex': '#ff69b4', 'fg': '#000000' },
      \ { 'name': 'palevioletred',        'hex': '#db7093', 'fg': '#000000' },
      \ { 'name': 'pink',                 'hex': '#ffc0cb', 'fg': '#000000' },
      \ { 'name': 'lightpink',            'hex': '#ffb6c1', 'fg': '#000000' },
      \ { 'name': 'thistle',              'hex': '#d8bfd8', 'fg': '#000000' },
      \ { 'name': 'magenta',              'hex': '#ff00ff', 'fg': '#000000' },
      \ { 'name': 'fuchsia',              'hex': '#ff00ff', 'fg': '#000000' },
      \ { 'name': 'violet',               'hex': '#ee82ee', 'fg': '#000000' },
      \ { 'name': 'plum',                 'hex': '#dda0dd', 'fg': '#000000' },
      \ { 'name': 'orchid',               'hex': '#da70d6', 'fg': '#000000' },
      \ { 'name': 'mediumorchid',         'hex': '#ba55d3', 'fg': '#000000' },
      \ { 'name': 'darkorchid',           'hex': '#9932cc', 'fg': '#ffffff' },
      \ { 'name': 'darkviolet',           'hex': '#9400d3', 'fg': '#ffffff' },
      \ { 'name': 'darkmagenta',          'hex': '#8b008b', 'fg': '#ffffff' },
      \ { 'name': 'purple',               'hex': '#800080', 'fg': '#ffffff' },
      \ { 'name': 'indigo',               'hex': '#4b0082', 'fg': '#ffffff' },
      \ { 'name': 'darkslateblue',        'hex': '#483d8b', 'fg': '#ffffff' },
      \ { 'name': 'blueviolet',           'hex': '#8a2be2', 'fg': '#ffffff' },
      \ { 'name': 'mediumpurple',         'hex': '#9370db', 'fg': '#000000' },
      \ { 'name': 'slateblue',            'hex': '#6a5acd', 'fg': '#ffffff' },
      \ { 'name': 'mediumslateblue',      'hex': '#7b68ee', 'fg': '#000000' },
      \ ]

let s:source = {
      \ 'name' : 'webcolorname',
      \ 'description' : 'Web color names',
      \ 'syntax': 'uniteSource__webcolorname',
      \ 'hooks': {},
      \ }

function! s:source.gather_candidates(args, context)
  let candidates = []

  for color in s:WEB_COLOR_NAMES
    call add(candidates, {
          \ 'word': color.name,
          \ 'abbr': printf('%-24s (%s)', color.name, color.hex),
          \ 'kind': 'word',
          \ })
  endfor

  return candidates
endfunction

function! s:source.hooks.on_syntax(args, context)
  for color in s:WEB_COLOR_NAMES
    let group = 'uniteSource__webcolorname_' . color.name
    let pattern = '/\s*' . color.name . '.*/'
    execute 'syntax match ' . group . ' ' . pattern . ' contained containedin=uniteSource__webcolorname'
    execute 'highlight default ' . group . ' guibg=' . color.hex . ' guifg=' . color.fg
  endfor
endfunction

function! unite#sources#webcolorname#define()
  return s:source
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set fdm=marker:
