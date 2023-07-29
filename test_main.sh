  1 #!/usr/bin/bash
  2
  3 # 入力数が少ない場合
  4 # 入力なし
  5 # 入力1個入力
  6 # 入力3個以上
  7
  8 # 自然数以外が入力された場合
  9 # a b ->"error:plz input natural number
 10 # -1
 11
 12 # 最大公約数が計算できているか
 13 # 2 4 -> 2
 14 echo "2" > /tmp/SS-ans
 15 ./main 2 4 > /temp/$$-result
 16 diff /tmp/$$-ans /tmp/$$-result || echo "テスト 3-1" >> /tmp/$$-error.log
 17
 18 # 1000 100 -> 100
 19 # 12 8 -> 4
 20
 21 if [ -f /tmp/$$-error.log ];then
 22         cat /tmp/$$-error.log 1>&2
 23         rm -f /tmp/$$-*
 24         exit 1
 25 fi
