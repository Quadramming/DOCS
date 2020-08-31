#!/bin/bash

# Pass 2 numbers as args

# comments
echo "Hello"

a=5 # No spaces =(
b="var"
c[0]='first'
c[1]='second'
d=('foo' 'bar')

echo "$a $b ${c[1]} ${d[*]}"

e=`expr 10 \& 20`
f=$((1*2*3))
echo "$e $f"

g='$b'
echo $g
eval echo $g
eval echo $(("1+2"))

#export some_var

echo $USER $BASH

#params:
echo $0 $1

#shift 1
#echo $1 $2

echo "Last prg end: $?"
echo "Shell id: $$"
echo "Last bg proc: $!"
echo "All params in one: $@"
echo "All params in one: $*"
echo "Args amount: $#"
echo "Random: $RANDOM"

#read -p "Write me something " userInput
#echo $userInput

test 2 -eq 2
echo $?
! [ 2 -eq 3 ] # Same as 'test' use space -_-
echo $?

if [ $1 -eq $2 ] # Need new line -_-
then
	echo "equal"
elif [ $1 -gt $2 ]
then echo "greater"
else
	echo "less"
fi

if a=`expr $RANDOM \> 15000`
	then echo "HEAD"
	else echo "TAIL"
fi

a='alternative'
case $a in
	some) echo "is some" ;;
	nosome|alternative) echo "nosome" ;;
	*) echo "unknown" ;;
esac

for x in a b $a $b "hello some"
do
	echo $x
done

for x in `echo 1 2 3 wow`
do
	echo $x
done

y=0
for x
do
	#y=`expr $y + 1`
	y=$(($y+1))
	echo "arg $y : $x"
done

y=0
while [ $RANDOM -gt 1000 ]
do
	y=$(($y+1))
done
echo "Randoms more than 1000 in a row: $y"


y=0
until [ $RANDOM -le 500 ]
do
	y=$(($y+1))
done
echo "Randoms more than 500 in a row: $y"

proc() {
	echo "Me proc $1 $2"
	return 100
}

proc arg1 arg2
echo $?

alias up="cd .."
unalias up

id
