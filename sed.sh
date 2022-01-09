#!/bin/bash
: '
 s/regular expression/replacement/flags
sed -e "s/aaaa/bbbb/"       # 置換 行で最初に出てきた'aaaa'を'bbbb'に置換
sed -e "s/aaaa/bbbb/g"      # 入力の全行に渡って置換 (Global)
sed -e "s/^aaaa/bbbb/"      # 行頭(^)に'aaaa'のもの
sed -e "s/aaaa\$/bbbb/"     # 行末($)に'aaaa'のもの。$は\でescape
sed -e "s/~/bbbb/"          # 行頭に'bbbb'を追加
sed -e "s/\$/bbbb/"         # 行末に'bbbb'を追加
sed -e "s/.*/abcd/"         # すべての行を'abcd'に置換
sed -e "s/aa.*bb//"         # aa*bbを削除
'
echo "sed command example"

echo "s1s2s3s4s5s6s7s8s9" | sed -e "s/s1/s100/"
echo "s1s2s3s4s5s6s7s8s9" | sed -e "s/^s1/s100/g"

: '
sed -e "/条件/d"

sed -e '1d' file                # 1行目を消去
sed -e '1,4d' file              # 1-4行目を消去
sed -e "/$d" file               # 最終行を消去
sed -e '$-3,$d' file            # 最後の4行を消去。$-3:最後から数えて3行目、すなわち最後から4行目
sed -e "/aaa/d"                 # aaaを含む行を削除 sはいらない
sed -e "/^[<space><tab>]*$/d"   # 空白行の削除
'