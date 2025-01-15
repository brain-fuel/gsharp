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

