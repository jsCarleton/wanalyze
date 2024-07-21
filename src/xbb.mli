type xbb_type = Loop | Block

type xbb = {
  xbbtype:      xbb_type;
  cost:         Et.et;
  bbs:          Bb.bb list;
  succ_xbb:     xbb option;
  nested_xbbs:  xbb list;
}

val xbb_bbs_of_bbs: Bb.bb list -> Bb.bb list list
val xbbs_of_bbs:    Bb.bb list -> xbb list
