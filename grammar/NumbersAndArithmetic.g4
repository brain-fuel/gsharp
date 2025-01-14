grammar NumbersAndArithmetic;



// digits
fragment DIGIT_DEC: [0-9];
fragment DIGIT_OCT: [0-7];
fragment DIGIT_HEX: [0-9] | [a-f] | [A-F];

// algebraic irrational numbers
fragment PHI: 'phi';

// transcendental numbers
fragment EULERS_NUM: 'e';
fragment PI: 'pi';

POW: '**';
MUL: '*';
DIV: '/';
ADD: '+';
SUBTR: '-';
EQ: '=';
NEQ: '=/=';
// Trigonometric Functions
SIN: 'sin';
COS: 'cos';
TAN: 'tan';
CSC: 'csc';
SEC: 'sec';
COT: 'cot';
ARCSIN: 'arcsin';
ARCCOS: 'arccos';
ARCTAN: 'arctan';
// Hyperbolic Functions
SINH: 'sinh';
COSH: 'cosh';
TANH: 'tanh';
CSCH: 'csch';
SECH: 'sech';
COTH: 'coth';
ARCSINH: 'arcsinh';
ARCCOSH: 'arccosh';
ARCTANH: 'arctanh';


WS: [\t\r\n]+ -> skip;
