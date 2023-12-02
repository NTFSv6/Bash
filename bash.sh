#! /bin/bash
# # >----------------------------------------------------------   ----------------------------------------------------------------------------------------------------------------------
# 0%%                                                                                   function
# >----------------------------------------------------------   ------------------------------------------------------------------------------------------------------------------------
# hello_message(){
#  #name=$1
#  local name=$1 #? عند استخدام كلمه local يتم تحويل المتغير الي محلي لا يستخدم بالخارج
#  echo "the name : $name"
#  #echo 'Hello From Main Function'
# }

# test_2() {
#  echo "Quit From $1"
# }

# print_something () {
# echo "Hello $@" # ^^ اذا كان المدخلات عددها غير معلوم نستخدمها بهذا الشكل 
# echo "Hello $1 $2 $3 $4"
# }

# name='global'

# echo "Name is $name : Before"

# hello_message 'local'

# echo "Name is $name : After"

# test_2 'AnyString Here-'

# print_something 'OMAR' 'ASHRAF' 'NTFS' 'v6'
# >----------------------------------------------------------   ------------------------------------------------------------------------------------------------------------------------
# 0%%                                                                                 function_Example
# >----------------------------------------------------------   ------------------------------------------------------------------------------------------------------------------------
# @@ هذا شكل عملي باستخدام ال function هل الملف موجود ام لا
# usage(){
#     echo "You need to provide an argument: "
#     echo "usage : $0 file_name"
# }

# is_file_exist(){
#     local file="$1"
#     [[ -f "$file" ]] && return 0 || return 1
# }

# [[ $# -eq 0 ]] && usage

# if ( is_file_exist "$1" );then
#  echo "file found"
# else
#  echo "file not found"
# fi
# >----------------------------------------------------------   ------------------------------------------------------------------------------------------------------------------------
# 0%%                                                                                 readonly command
# >----------------------------------------------------------   ------------------------------------------------------------------------------------------------------------------------
# test=32
# readonly test # @@ عند استخدام امر ال readonly تجعل المتغير او الشي المستخدم لا يتم التعديل عليه
# test=15
# echo "test > $test"

# readonly_fun(){
#     echo "Hello World"
# }
# readonly -f readonly_fun # @@ عند عمل نفس الشي علي ال function نستخدم علامه -f ثم اسم ال function

# readonly_fun

# readonly_fun(){
#     echo "Hello readonly_fun"
# }
# >-                                                                                                                                                                                    
# !                                                                                 Signals and Traps
# >-                                                                                                                                                                                    
#!/bin/bash

# file=/home/virtual/Documents/test.txt
# trap "rm -f $file && echo file Deleted; exit" 0 2 15

# echo "paid is $$"
# while (( COUNT < 10 ));do
#  sleep 10
#  (( COUNT ++ ))
#  echo $COUNT;done
#  exit 0  # 0 => True
# >-                                                                                                                                                                                    
# !                                                                                 Debug in Bash
# >-                                                                                                                                                                                    

# ? اول طريقه نستخدم -x حيت تشغل ال script
# @@ bash -x ./script.sh
# ? ثاني طريقه استخدامها بداخل ال script ذات نفسها في اول سطر الذي يتم كتابه في  bin/bash
# @@ #!/bin/bash -x
# ? الطريقه الثالثه نستخدم set في بدايه المكان الذي نريد معرفه التفاصبل الذي تحدث في ويمكننا اقفها في مكان معين
# @@ set -x 
# >-                                                                                                                                                                                    
# !                                                                                 Back Again 20/8/2023
# >-                                                                                                                                                                                    
var="NNv1"
case $var in
    NNv|nnv|vvN)
    echo "${var} iS Caseed . "
    ;;
    NDD|FSA|FSA)
    echo "${var} iS 2 Caseed .. "
    ;;
    *)
    echo "Failed From All ... "
    ;;
esac