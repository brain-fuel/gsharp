grammar Operators

// Boolean

NULL:     'null';
ID:       'id';
TRANSFER: 'xfer';

NOT: '~';

LEFT:      'left';
RIGHT:     'right';
NOT_LEFT:  '~left';
NOT_RIGHT: '~right';

AND_SYMB:    '/\\';
AND_WORD:    'and';
NAND_SYMB:   '~/\\';
NAND_WORD:    'nand';

OR_SYMBOL:   '\\/';
OR_WORD:     'or';
NOR_SYMBOL:  '~\\/';
NOR_WORD:    'nor';

LEFT_DOUBLE_ARROW:         '<=';   // right implies left
RIGHT_DOUBLE_ARROW:        '=>';   // left implies right
STRIKE_LEFT_DOUBLE_ARROW:  '<=/';  // right inhibits left
STRIKE_RIGHT_DOUBLE_ARROW: '\\=>'; // left inhibits right

XNOR: '<=>'; // iff
XOR:  '<~>';

// Arithmetic

ADD_SYMB:   '+';
ADD_WORD:   'add';
SUBTR_SYMB: '-';
SUBTR_WORD: 'subtr';
MULT_SYMB:  '*';
MULT_WORD:  'mult';
DIV_SYMB:   '/';
DIV_WORD:   'div';
MOD_SYMB:   '\/\/\/';
MOD_WORD:   'mod';
REM_SYMB:   '\/\/';
REM_WORD:   'rem';
POW:        '^';
ROOT:       '%';
