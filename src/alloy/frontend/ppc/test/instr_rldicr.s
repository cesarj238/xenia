test_rldicr_1:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicr r3, r4, 24, 0
  blr
  #_ REGISTER_OUT r3 0x0000000000000000
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicr_2:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicr r3, r4, 24, 8
  blr
  #_ REGISTER_OUT r3 0x6780000000000000
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicr_3:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicr r3, r4, 24, 63
  blr
  #_ REGISTER_OUT r3 0x6789abcdef012345
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicr_4:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicr r3, r4, 0, 0
  blr
  #_ REGISTER_OUT r3 0x0000000000000000
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicr_5:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicr r3, r4, 0, 63
  blr
  #_ REGISTER_OUT r3 0x0123456789abcdef
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicr_6:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicr r3, r4, 0, 8
  blr
  #_ REGISTER_OUT r3 0x0100000000000000
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicr_7:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicr r3, r4, 63, 0
  blr
  #_ REGISTER_OUT r3 0x8000000000000000
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicr_8:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicr r3, r4, 63, 63
  blr
  #_ REGISTER_OUT r3 0x8091a2b3c4d5e6f7
  #_ REGISTER_OUT r4 0x0123456789ABCDEF

test_rldicr_9:
  #_ REGISTER_IN r4 0x0123456789ABCDEF
  rldicr r3, r4, 31, 0
  blr
  #_ REGISTER_OUT r3 0x8000000000000000
  #_ REGISTER_OUT r4 0x0123456789ABCDEF