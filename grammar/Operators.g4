grammar Operators

// Boolean

NULL: 'null';
ID: 'id';
TRANSFER: 'xfer';

NOT: '~';

LEFT:      'left';
RIGHT:     'right';
NOT_LEFT:  '~left';
NOT_RIGHT: '~right';

AND:  '/\';
NAND: '~/\';

OR:   '\/';
NOR:  '~\/';

LEFT_DOUBLE_ARROW:         '<='; // right implies left
RIGHT_DOUBLE_ARROW:        '=>'; // left implies right
STRIKE_LEFT_DOUBLE_ARROW:  '<=/'; // right inhibits left
STRIKE_RIGHT_DOUBLE_ARROW: '\=>'; // left inhibits right

XNOR: '<=>'; // iff
XOR:  '<~>';

