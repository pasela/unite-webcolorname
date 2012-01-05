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
      \ { 'name': 'black',                'hex': '#000000' },
      \ { 'name': 'dimgray',              'hex': '#696969' },
      \ { 'name': 'gray',                 'hex': '#808080' },
      \ { 'name': 'darkgray',             'hex': '#a9a9a9' },
      \ { 'name': 'silver',               'hex': '#c0c0c0' },
      \ { 'name': 'lightgrey',            'hex': '#d3d3d3' },
      \ { 'name': 'gainsboro',            'hex': '#dcdcdc' },
      \ { 'name': 'whitesmoke',           'hex': '#f5f5f5' },
      \ { 'name': 'white',                'hex': '#ffffff' },
      \ { 'name': 'snow',                 'hex': '#fffafa' },
      \ { 'name': 'ghostwhite',           'hex': '#f8f8ff' },
      \ { 'name': 'floralwhite',          'hex': '#fffaf0' },
      \ { 'name': 'linen',                'hex': '#faf0e6' },
      \ { 'name': 'antiquewhite',         'hex': '#faebd7' },
      \ { 'name': 'papayawhip',           'hex': '#ffefd5' },
      \ { 'name': 'blanchedalmond',       'hex': '#ffebcd' },
      \ { 'name': 'bisque',               'hex': '#ffe4c4' },
      \ { 'name': 'moccasin',             'hex': '#ffe4b5' },
      \ { 'name': 'navajowhite',          'hex': '#ffdead' },
      \ { 'name': 'peachpuff',            'hex': '#ffdab9' },
      \ { 'name': 'mistyrose',            'hex': '#ffe4e1' },
      \ { 'name': 'lavenderblush',        'hex': '#fff0f5' },
      \ { 'name': 'seashell',             'hex': '#fff5ee' },
      \ { 'name': 'oldlace',              'hex': '#fdf5e6' },
      \ { 'name': 'ivory',                'hex': '#fffff0' },
      \ { 'name': 'honeydew',             'hex': '#f0fff0' },
      \ { 'name': 'mintcream',            'hex': '#f5fffa' },
      \ { 'name': 'azure',                'hex': '#f0ffff' },
      \ { 'name': 'aliceblue',            'hex': '#f0f8ff' },
      \ { 'name': 'lavender',             'hex': '#e6e6fa' },
      \ { 'name': 'lightsteelblue',       'hex': '#b0c4de' },
      \ { 'name': 'lightslategray',       'hex': '#778899' },
      \ { 'name': 'slategray',            'hex': '#708090' },
      \ { 'name': 'steelblue',            'hex': '#4682b4' },
      \ { 'name': 'royalblue',            'hex': '#4169e1' },
      \ { 'name': 'midnightblue',         'hex': '#191970' },
      \ { 'name': 'navy',                 'hex': '#000080' },
      \ { 'name': 'darkblue',             'hex': '#00008b' },
      \ { 'name': 'mediumblue',           'hex': '#0000cd' },
      \ { 'name': 'blue',                 'hex': '#0000ff' },
      \ { 'name': 'dodgerblue',           'hex': '#1e90ff' },
      \ { 'name': 'cornflowerblue',       'hex': '#6495ed' },
      \ { 'name': 'deepskyblue',          'hex': '#00bfff' },
      \ { 'name': 'lightskyblue',         'hex': '#87cefa' },
      \ { 'name': 'skyblue',              'hex': '#87ceeb' },
      \ { 'name': 'lightblue',            'hex': '#add8e6' },
      \ { 'name': 'powderblue',           'hex': '#b0e0e6' },
      \ { 'name': 'paleturquoise',        'hex': '#afeeee' },
      \ { 'name': 'lightcyan',            'hex': '#e0ffff' },
      \ { 'name': 'cyan',                 'hex': '#00ffff' },
      \ { 'name': 'aqua',                 'hex': '#00ffff' },
      \ { 'name': 'turquoise',            'hex': '#40e0d0' },
      \ { 'name': 'mediumturquoise',      'hex': '#48d1cc' },
      \ { 'name': 'darkturquoise',        'hex': '#00ced1' },
      \ { 'name': 'lightseagreen',        'hex': '#20b2aa' },
      \ { 'name': 'cadetblue',            'hex': '#5f9ea0' },
      \ { 'name': 'darkcyan',             'hex': '#008b8b' },
      \ { 'name': 'teal',                 'hex': '#008080' },
      \ { 'name': 'darkslategray',        'hex': '#2f4f4f' },
      \ { 'name': 'darkgreen',            'hex': '#006400' },
      \ { 'name': 'green',                'hex': '#008000' },
      \ { 'name': 'forestgreen',          'hex': '#228b22' },
      \ { 'name': 'seagreen',             'hex': '#2e8b57' },
      \ { 'name': 'mediumseagreen',       'hex': '#3cb371' },
      \ { 'name': 'mediumaquamarine',     'hex': '#66cdaa' },
      \ { 'name': 'darkseagreen',         'hex': '#8fbc8f' },
      \ { 'name': 'aquamarine',           'hex': '#7fffd4' },
      \ { 'name': 'palegreen',            'hex': '#98fb98' },
      \ { 'name': 'lightgreen',           'hex': '#90ee90' },
      \ { 'name': 'springgreen',          'hex': '#00ff7f' },
      \ { 'name': 'mediumspringgreen',    'hex': '#00fa9a' },
      \ { 'name': 'lawngreen',            'hex': '#7cfc00' },
      \ { 'name': 'chartreuse',           'hex': '#7fff00' },
      \ { 'name': 'greenyellow',          'hex': '#adff2f' },
      \ { 'name': 'lime',                 'hex': '#00ff00' },
      \ { 'name': 'limegreen',            'hex': '#32cd32' },
      \ { 'name': 'yellowgreen',          'hex': '#9acd32' },
      \ { 'name': 'darkolivegreen',       'hex': '#556b2f' },
      \ { 'name': 'olivedrab',            'hex': '#6b8e23' },
      \ { 'name': 'olive',                'hex': '#808000' },
      \ { 'name': 'darkkhaki',            'hex': '#bdb76b' },
      \ { 'name': 'palegoldenrod',        'hex': '#eee8aa' },
      \ { 'name': 'cornsilk',             'hex': '#fff8dc' },
      \ { 'name': 'beige',                'hex': '#f5f5dc' },
      \ { 'name': 'lightyellow',          'hex': '#ffffe0' },
      \ { 'name': 'lightgoldenrodyellow', 'hex': '#fafad2' },
      \ { 'name': 'lemonchiffon',         'hex': '#fffacd' },
      \ { 'name': 'wheat',                'hex': '#f5deb3' },
      \ { 'name': 'burlywood',            'hex': '#deb887' },
      \ { 'name': 'tan',                  'hex': '#d2b48c' },
      \ { 'name': 'khaki',                'hex': '#f0e68c' },
      \ { 'name': 'yellow',               'hex': '#ffff00' },
      \ { 'name': 'gold',                 'hex': '#ffd700' },
      \ { 'name': 'orange',               'hex': '#ffa500' },
      \ { 'name': 'sandybrown',           'hex': '#f4a460' },
      \ { 'name': 'darkorange',           'hex': '#ff8c00' },
      \ { 'name': 'goldenrod',            'hex': '#daa520' },
      \ { 'name': 'peru',                 'hex': '#cd853f' },
      \ { 'name': 'darkgoldenrod',        'hex': '#b8860b' },
      \ { 'name': 'chocolate',            'hex': '#d2691e' },
      \ { 'name': 'sienna',               'hex': '#a0522d' },
      \ { 'name': 'saddlebrown',          'hex': '#8b4513' },
      \ { 'name': 'maroon',               'hex': '#800000' },
      \ { 'name': 'darkred',              'hex': '#8b0000' },
      \ { 'name': 'brown',                'hex': '#a52a2a' },
      \ { 'name': 'firebrick',            'hex': '#b22222' },
      \ { 'name': 'indianred',            'hex': '#cd5c5c' },
      \ { 'name': 'rosybrown',            'hex': '#bc8f8f' },
      \ { 'name': 'darksalmon',           'hex': '#e9967a' },
      \ { 'name': 'lightcoral',           'hex': '#f08080' },
      \ { 'name': 'salmon',               'hex': '#fa8072' },
      \ { 'name': 'lightsalmon',          'hex': '#ffa07a' },
      \ { 'name': 'coral',                'hex': '#ff7f50' },
      \ { 'name': 'tomato',               'hex': '#ff6347' },
      \ { 'name': 'orangered',            'hex': '#ff4500' },
      \ { 'name': 'red',                  'hex': '#ff0000' },
      \ { 'name': 'crimson',              'hex': '#dc143c' },
      \ { 'name': 'mediumvioletred',      'hex': '#c71585' },
      \ { 'name': 'deeppink',             'hex': '#ff1493' },
      \ { 'name': 'hotpink',              'hex': '#ff69b4' },
      \ { 'name': 'palevioletred',        'hex': '#db7093' },
      \ { 'name': 'pink',                 'hex': '#ffc0cb' },
      \ { 'name': 'lightpink',            'hex': '#ffb6c1' },
      \ { 'name': 'thistle',              'hex': '#d8bfd8' },
      \ { 'name': 'magenta',              'hex': '#ff00ff' },
      \ { 'name': 'fuchsia',              'hex': '#ff00ff' },
      \ { 'name': 'violet',               'hex': '#ee82ee' },
      \ { 'name': 'plum',                 'hex': '#dda0dd' },
      \ { 'name': 'orchid',               'hex': '#da70d6' },
      \ { 'name': 'mediumorchid',         'hex': '#ba55d3' },
      \ { 'name': 'darkorchid',           'hex': '#9932cc' },
      \ { 'name': 'darkviolet',           'hex': '#9400d3' },
      \ { 'name': 'darkmagenta',          'hex': '#8b008b' },
      \ { 'name': 'purple',               'hex': '#800080' },
      \ { 'name': 'indigo',               'hex': '#4b0082' },
      \ { 'name': 'darkslateblue',        'hex': '#483d8b' },
      \ { 'name': 'blueviolet',           'hex': '#8a2be2' },
      \ { 'name': 'mediumpurple',         'hex': '#9370db' },
      \ { 'name': 'slateblue',            'hex': '#6a5acd' },
      \ { 'name': 'mediumslateblue',      'hex': '#7b68ee' },
      \ ]

let s:source = {
      \ 'name' : 'webcolorname',
      \ 'description' : 'Web color names',
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

function! unite#sources#webcolorname#define()
  return s:source
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: set fdm=marker:
