# making function for greeting 

#Function_1
greet_user(){
    echo "Hello: $1"
}

#Function_2
sum(){
    result=$(( $1+$2 ))
    echo "The sum is: $result"
}

#Calling_functions
greet_user "ahmed"
sum 3 4 
