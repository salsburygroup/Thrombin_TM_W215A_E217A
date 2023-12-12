convert Hbond_WT_WTTM456.png Hbond_WT_WE.png Hbond_WT_WETM456.png +append tmp1.png
convert Hbond_WTTM456_WE.png Hbond_WTTM456_WETM456.png Hbond_WE_WETM456.png +append tmp2.png
convert tmp1.png tmp2.png -append Hbond_pairwise.png
rm tmp1.png tmp2.png
