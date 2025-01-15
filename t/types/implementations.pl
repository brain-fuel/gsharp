implements_trait(bool, un_op, bool_null/1). 
implements_trait(bool, un_op, bool_id/1). 
implements_trait(bool, un_op, bool_transfer).

implements_trait(bool, un_op, bool_not). 

implements_trait(bool, bin_op, bool_null/2). 
implements_trait(bool, bin_op, bool_id/2). 

implements_trait(bool, bin_op, bool_left). 
implements_trait(bool, bin_op, bool_right). 
implements_trait(bool, bin_op, bool_not_left). 
implements_trait(bool, bin_op, bool_not_right). 

implements_trait(bool, bin_op, bool_and). 
implements_trait(bool, bin_op, bool_nand). 

implements_trait(bool, bin_op, bool_or). 
implements_trait(bool, bin_op, bool_nor). 

implements_trait(bool, bin_op, bool_left_implies_right). 
implements_trait(bool, bin_op, bool_right_implies_left). 
implements_trait(bool, bin_op, bool_left_inhibits_right). 
implements_trait(bool, bin_op, bool_right_inhibits_left). 

implements_trait(bool, bin_op, bool_xnor). % iff
implements_trait(bool, bin_op, bool_xor). 
