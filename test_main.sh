#!/usr/bin/bash

# 入力なし
echo "引数は2つの数値を指定してください。" > /tmp/$$-ans
./main > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo "テスト ./main" >> /tmp/$$-error.log
rm /tmp/$$-ans /tmp/$$-result

# 入力1個
echo "引数は2つの数値を指定してください。" > /tmp/$$-ans
./main 3 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo "テスト ./main 3" >> /tmp/$$-error.log
rm /tmp/$$-ans /tmp/$$-result

# 入力3個以上
echo "引数は2つの数値を指定してください。" > /tmp/$$-ans
./main 2 4 8 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo "テスト ./main 2 4 8" >> /tmp/$$-error.log
rm /tmp/$$-ans /tmp/$$-result

#自然数以外が入力された場合
# 0 10 -> ERROR
echo "引数は正の自然数を指定してください。" > /tmp/$$-ans
./main 0 10 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo "テスト ./main 0 10" >> /tmp/$$-error.log
rm /tmp/$$-ans /tmp/$$-result

# -2 4 -> ERROR
echo "引数は正の自然数を指定してください。" > /tmp/$$-ans
./main -2 4 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo "テスト ./main -2 4" >> /tmp/$$-error.log
rm /tmp/$$-ans /tmp/$$-result

# D 51 -> ERROR
echo "引数は正の自然数を指定してください。" > /tmp/$$-ans
./main D 51 > /tmp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo "テスト ./main D 51" >> /tmp/$$-error.log
rm /tmp/$$-ans /tmp/$$-result


# 最大公約数が計算できているか
# 2 4 -> 2
echo "2" > /tmp/$$-ans
./main 2 4 > /temp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo "テスト ./main 2 4" >> /tmp/$$-error.log
rm /tmp/$$-ans /tmp/$$-result

# 1000 100 -> 100
echo "100" > /tmp/$$-ans
./main 1000 100 > /temp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo "テスト ./main 1000 100" >> /tmp/$$-error.log
rm /tmp/$$-ans /tmp/$$-result

# 35 48 -> 1
echo "1" > /tmp/$$-ans
./main 35 48 > /temp/$$-result
diff /tmp/$$-ans /tmp/$$-result || echo "テスト ./main 35 48" >> /tmp/$$-error.log
rm /tmp/$$-ans /tmp/$$-result

# エラー結果出力
if [ -f /tmp/$$-error.log ]; then
        cat /tmp/$$-error.log 1>&2
        rm /tmp/$$-error.log
        fi
done

if [ $num2 -eq 1 ]; then
        echo $num2
else
        echo $num1
fi
        exit 1
fi
