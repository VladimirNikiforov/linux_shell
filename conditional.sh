this_command_does_not_exist
echo $?
echo I will succeed.
echo $?
true
echo $?
false
echo $?

true && echo "Program 1 was executed."
false && echo "Program 2 was executed."
false && true && echo Hello

echo 1 && false && echo 3
echo Athos && echo Porthos && echo Aramis

true || echo "Program 1 was executed."
false || echo "Program 2 was executed."

false || echo 1 || echo 2
echo 3 || false || echo 4
echo Athos || echo Porthos || echo Aramis

echo Athos || echo Porthos && echo Aramis
echo Gaspar && echo Balthasar || echo Melchior

[[ 4 -gt 3 ]] && echo t || echo f
[[ 3 -gt 4 ]] && echo t || echo f


number=7
[[ $number -gt 3 ]] && echo t || echo f
[[ $number -gt 10 ]] && echo t || echo f
[[ -e $number ]] && echo t || echo f


#Logical Flag	Meaning	Usage
#-gt	Greater Than	[[ $planets -gt 8 ]]
#-ge	Greater Than or Equal To	[[ $votes -ge 270 ]]
#-eq	Equal	[[ $fingers -eq 10 ]]
#-ne	Not Equal	[[ $pages -ne 0 ]]
#-le	Less Than or Equal To	[[ $candles -le 9 ]]
#-lt	Less Than	[[ $wives -lt 2 ]]
#-e	A File Exists	[[ -e $taxes_2016 ]]
#-d	A Directory Exists	[[ -d $photos ]]
#-z	Length of String is Zero	[[ -z $name ]]
#-n	Length of String is Non-Zero	[[ -n $name ]]


[[ rhythms =~ [aeiou] ]] && echo t || echo f
my_name=sean
[[ $my_name =~ ^s.+n$ ]] && echo t || echo f

[[ 7 -gt 2 ]] && echo t || echo f
[[ ! 7 -gt 2 ]] && echo t || echo f
[[ 6 -ne 3 ]] && echo t || echo f
[[ ! 6 -ne 3 ]] && echo t || echo f

#Logical Operator	Meaning	Usage
#=~	Matches Regular Expression	[[ $consonants =~ [aeiou] ]]
#=	String Equal To	[[ $password = "pegasus" ]]
#!=	String Not Equal To	[[ $fruit != "banana" ]]
#!	Not	[[ ! "apple" =~ ^b ]]
