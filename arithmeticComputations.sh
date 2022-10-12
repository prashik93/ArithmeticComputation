#! /bin/bash/ -x

read -p "Enter First Number :- " a
read -p "Enter Second Number :- " b
read -p "Enter Third Number :- " c

firstOperation=$(($a + $b * $c))

secondOperation=$(($a * $b + $c))

thirdOperation=$(( $c + ($a/$b) ))

fourthOperation=$(( ($a % $b) + $c ))


firstOperationKey=1
secondOperationKey=2
thirdOperationKey=3
fourthOperationKey=4

declare -A resultDictionary

declare -A resultArray

index=${#resultArray[@]}


flag=true

while $flag
do
	if [ $firstOperation ]
	then
		resultDictionary[ $firstOperationKey ]=$firstOperation
	fi

	if [ $secondOperation ]
	then
		resultDictionary[ $secondOperationKey ]=$secondOperation
	fi

	if [ $thirdOperation ]
	then
		resultDictionary[ $thirdOperationKey ]=$thirdOperation
	fi

	if [ $fourthOperation ]
	then
		resultDictionary[ $fourthOperationKey ]=$fourthOperation
	fi
	flag=false
done

#echo "Dictionary-Keys :- ${!resultDictionary[@]}"
#echo "Dictionary-values :- ${resultDictionary[@]}"

for key in "${!resultDictionary[@]}"
do
	value="${resultDictionary[$key]}"
	resultArray[$index]=$value
	((index++))
done

#echo "Array :- ${resultArray[@]}"

descendingResult=`for num in ${resultArray[@]}; do echo $num; done | sort -nr`
echo $descendingResult
