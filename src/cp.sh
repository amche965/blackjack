#!/bin/bash
ppass=0     #playerのパスの数
cpass=0     #cpmのパスの数
order=''    #先攻後攻
other=''    #もう片方
secret=0
s=0
pd=();
cpd=();

Drow(){
a=();
for((i=0; i < 12; i++));
do
a[$i]=$(( $i + 1));
done

echo ${a[@]}
}


Order(){
s=$(($RANDOM % 2 + 1))

if [ $s -lt 2 ];then
        order='Player'

        else
        order='CPM'
fi

echo 'ゲーム開始 : 先行' $order

echo "$order : ${a[0]}"
pd=(${a[0]} ${pd[@]})
a=(${a[@]:1})
echo "$other : ${a[0]}"
secret=${a[0]}
a=(${a[@]:1}
cpsum=$((cpsum + secert))
}
Pdrow(){
read -p '>>>> カードを引きますか？ d/p:' choose

if [ $choose = 'd' ];then
        pd=(${pd[@]} ${a[0]})
        playersum=$((playersum + {a[0]}))
        echo 'Player : '"${pd[@]} = 合計"  $playersum
        a=(${a[@]:1})

        else
        ppass=$((ppass+1))
fi
}

Cdrow(){
if [ $cpsum -le 17 ];then
        cchoose='d'

        else
        cchoose='p'
fi
echo '>>>> カードを引きますか？ d/p:' $cchoose

if [ $cchoose = 'd' ];then
        cpd=(${cpd[@]} ${a[0]})
        echo "${a[0]}"
        echo '合計 : ? +' "${cpd[@]}"
        cpsum=$((cpsum + {a[0]}))
        a=(${a[@]:1})

        else
        cpass=$((cpass+1))
fi
}
Check(){
if [ $cpsum -le 21 -a $playersum -le 21 ];then
        if [ $cpsum < $playersum ];then
                echo 'CPM : ' $cpsum
                echo 'Player : ' $playersum
                echo 'You Win!'

                else
                echo 'CPM : ' $cpsum
                echo 'Player : ' $playersum
                echo 'You Lose'
}

Drow
Order
while [ $ppass -lt 2 -a $cpass -lt 2 ];
do
if [ $s -lt 2 ];then
        Pdrow

        else
        Cdrow
fi
done
Check

