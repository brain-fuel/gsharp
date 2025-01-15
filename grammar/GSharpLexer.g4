lexer grammar GSharp;

// digits
fragment DIGIT_DEC: [0-9];
fragment DIGIT_OCT: [0-7];
fragment DIGIT_HEX: [0-9] | [a-f] | [A-F];

// algebraic irrational numbers
fragment PHI: 'phi';

// transcendental numbers
fragment EULERS_NUM: 'e';
fragment PI: 'pi';

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
NAND_WORD:   'nand';

OR_SYMB:     '\\/';
OR_WORD:     'or';
NOR_SYMB:    '~\\/';
NOR_WORD:    'nor';

LEFT_DOUBLE_ARROW:         '<=';   // right implies left
IMPLIED_BY:                'implied_by';
RIGHT_DOUBLE_ARROW:        '=>';   // left implies right
IMPLIES:                   'implies';
STRIKE_LEFT_DOUBLE_ARROW:  '<=/';  // right inhibits left
INHIBITED_BY:              'inhibited_by';
STRIKE_RIGHT_DOUBLE_ARROW: '\\=>'; // left inhibits right
INHIBITS:                  'inhibits';

XNOR_SYMB: '<=>'; // iff
XNOR_WORD: 'xnor'; // iff
IFF_WORD:  'iff';
XOR_SYMB:  '<~>';
XOR_WORD:  'xor';

// Arithmetic

EQ_SYMB:    '=';
EQ_WORD:    'equals';
NEQ_SYMB:   '~=';
NEQ_WORD:   '~equals';
ADD_SYMB:   '+';
ADD_WORD:   'add';
SUBTR_SYMB: '-';
SUBTR_WORD: 'subtract';
MULT_SYMB:  '*';
MULT_WORD:  'multiply';
DIV_SYMB:   '/';
DIV_WORD:   'divide';
MOD_SYMB:   '///';
MOD_WORD:   'mod';
REM_SYMB:   '//';
REM_WORD:   'rem';
POW_SYMB:   '^';
POW_WORD:   'power';
ROOT_SYMB:  '%';
ROOT_WORD:  'root';

// Trigonometry

SIN: 'sin';
COS: 'cos';
TAN: 'tan';
CSC: 'csc';
SEC: 'sec';
COT: 'cot';
ARCSIN: 'arcsin';
ARCCOS: 'arccos';
ARCTAN: 'arctan';

// Hyperbolic

SINH: 'sinh';
COSH: 'cosh';
TANH: 'tanh';
CSCH: 'csch';
SECH: 'sech';
COTH: 'coth';
ARCSINH: 'arcsinh';
ARCCOSH: 'arccosh';
ARCTANH: 'arctanh';

// Collections

APPEND_SYMB: '++'
APPEND_WORD: 'append'
