%% Need to figure out how to deal with the conflict between boolean id function and unital magma id function (identity property)
implements_trait(bool, un_op, bool_null_un). % null
implements_trait(bool, un_op, bool_id_un). % id
implements_trait(bool, un_op, bool_transfer). % tx
implements_trait(bool, un_op, bool_not). % not

implements_trait(bool, bin_op, bool_null_bin). % |null|
implements_trait(bool, bin_op, bool_id_bin). % |id|
implements_trait(bool, bin_op, bool_left). % |left|
implements_trait(bool, bin_op, bool_right). % |right|
implements_trait(bool, bin_op, bool_not_left). % |!left|
implements_trait(bool, bin_op, bool_not_right). % |!right|
implements_trait(bool, bin_op, bool_nand). % |nand|
implements_trait(bool, bin_op, bool_and). % |and|
implements_trait(bool, bin_op, bool_nor). % |nor|
implements_trait(bool, bin_op, bool_or). % |or|
implements_trait(bool, bin_op, bool_xnor). % |xnor|
implements_trait(bool, bin_op, bool_xor). % |xor|
implements_trait(bool, bin_op, bool_left_implies_right). % |<-|
implements_trait(bool, bin_op, bool_right_implies_left). % |->|
implements_trait(bool, bin_op, bool_left_inhibits_right). % |<-/|
implements_trait(bool, bin_op, bool_right_inhibits_left). % |\->|
implements_trait(bool, bin_op, bool_iff). % |<->|

