<<<<<<< HEAD
#!/bin/bash

ppass=0     #player�̃p�X�̐�
cpass=0     #cpm�̃p�X�̐�
order=''    #��U��U
other=''    #�����Е�
secret=0
s=0
pf=0
cf=0
pd=();
cpd=();

# �V���b�t���֐�
shuffle() {
local i tmp size max rand

size=${#a[*]}
max=$(( 32768 / size * size ))

for ((i=size-1; i>0; i--)); do
while (( (rand=$RANDOM) >= max )); do :; done
rand=$(( rand % (i+1) ))
tmp=${a[i]} a[i]=${a[rand]} a[rand]=$tmp
done
}

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
        other='CPM'
        else
        order='CPM'
        other='Player'
fi

echo '�Q�[���J�n : ��s' $order

echo "$order : ${a[0]}"
pd=(${a[0]} ${pd[@]})
a=(${a[@]:1})
echo "$other : ?"
secret=${a[0]}
a=(${a[@]:1})
cpsum=$((cpsum + secert))
}


Cdrow(){
if [ $cpsum -le 17 ];then
        cchoose='d'

        else
        cchoose='p'
fi
echo '>>>> �J�[�h�������܂����H d/p:' $cchoose

if [ $cchoose = 'd' ];then
        cpd=(${cpd[@]} ${a[0]})
        echo '���v : ? +' "${cpd[@]}"
        cpsum=$(( cpsum + ${a[0]} ));
        a=(${a[@]:1})

        else
        cpass=$((cpass+1))
fi
}
Check(){
if [ $cpsum -le 21 -a $playersum -le 21 ];then
        if [ $cpsum -lt $playersum ];then
                echo 'CPM : ' $cpsum
                echo 'Player : ' $playersum
                echo 'You Win!'

                else
                echo 'CPM : ' $cpsum
                echo 'Player : ' $playersum
                echo 'You Lose'
        fi
elif [ $cpsum -le 21 ];then
                echo 'CPM : '$cpsum
                echo 'Player : '$playersum
                echo 'You Lose'

        else
        echo 'You Win!'

fi
}

Drow
Order
shuffle
while [ $ppass -lt 2 -a $cpass -lt 2 ];
do
if [ $s -lt 2 ];then
        Pdrow
        pf=1
        else
        Cdrow
        cf=1
fi

if [ $pf -lt 1 ];then
        Pdrow
        cf=0

        else
        Cdrow
        pf=0
fi

done

Check




=======
#!/bin/bash

ppass=0     #player�̃p�X�̐�
cpass=0     #cpm�̃p�X�̐�
order=''    #��U��U
other=''    #�����Е�
secret=0
s=0
pf=0
cf=0
pd=();
cpd=();

# �V���b�t���֐�
shuffle() {
local i tmp size max rand

size=${#a[*]}
max=$(( 32768 / size * size ))

for ((i=size-1; i>0; i--)); do
while (( (rand=$RANDOM) >= max )); do :; done
rand=$(( rand % (i+1) ))
tmp=${a[i]} a[i]=${a[rand]} a[rand]=$tmp
done
}

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
        other='CPM'
        else
        order='CPM'
        other='Player'
fi

echo '�Q�[���J�n : ��s' $order

echo "$order : ${a[0]}"
pd=(${a[0]} ${pd[@]})
a=(${a[@]:1})
echo "$other : ?"
secret=${a[0]}
a=(${a[@]:1})
cpsum=$((cpsum + secert))
}


Cdrow(){
if [ $cpsum -le 17 ];then
        cchoose='d'

        else
        cchoose='p'
fi
echo '>>>> �J�[�h�������܂����H d/p:' $cchoose

if [ $cchoose = 'd' ];then
        cpd=(${cpd[@]} ${a[0]})
        echo '���v : ? +' "${cpd[@]}"
        cpsum=$(( cpsum + ${a[0]} ));
        a=(${a[@]:1})

        else
        cpass=$((cpass+1))
fi
}
Check(){
if [ $cpsum -le 21 -a $playersum -le 21 ];then
        if [ $cpsum -lt $playersum ];then
                echo 'CPM : ' $cpsum
                echo 'Player : ' $playersum
                echo 'You Win!'

                else
                echo 'CPM : ' $cpsum
                echo 'Player : ' $playersum
                echo 'You Lose'
        fi
elif [ $cpsum -le 21 ];then
                echo 'CPM : '$cpsum
                echo 'Player : '$playersum
                echo 'You Lose'

        else
        echo 'You Win!'

fi
}

Drow
Order
shuffle
while [ $ppass -lt 2 -a $cpass -lt 2 ];
do
if [ $s -lt 2 ];then
        Pdrow
        pf=1
        else
        Cdrow
        cf=1
fi

if [ $pf -lt 1 ];then
        Pdrow
        cf=0

        else
        Cdrow
        pf=0
fi

done

Check




>>>>>>> 0ff6a79b816443397ddfa98250dbc94c00fd8582
