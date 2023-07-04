output "hello" {
    value = "this is my hello-world file"
}

output "printname" {
    value = " hello ${var.username}"
}

//output "printname" {
//    value =   var.username
//}

output "second-name" {
    value = "my age is ${var.age} "
}

output "printfirst" {
#    value = "first user is ${var.users[0]}"     # for print 1st only we use [0]     check variable.tf 
    value = "${join(",",var.users)}"             # for join function use seprater by ,  and  for print all        we anslo can use other like , - _ / 
}

output "name-upper" {
    value = "${upper(var.users[0])}"     # for upper  all in capital words we use this function    upper
}

output "name-lower" {
    value = "${lower(var.users[1])}"     # for lower  all in small words we use this function     lower
}

output "name-title" {
    value = "${title(var.users[2])}"     # for title 1st is capital words we use this function     title
}