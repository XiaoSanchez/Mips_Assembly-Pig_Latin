.data
prompt: .asciiz "Enter Input:" 
input: .space 201 
vowel: .asciiz "aeiou"
ay: .asciiz "ay "
way: .asciiz "way "
.text
.globl main
    
main:
la $t2, ' '
la $t7, '\n'

la $a0, prompt 		# address of string to print
li $v0, 4
syscall

la $a0, input 		# address to store string at
li $a1, 64 		# maximum number of chars (including '\0')
li $v0, 8
syscall

la $t0, input   	# load mystring to $t0

loop:
lb $t3, ($t0)      	# make $t3 point to the first character of input
addi $t0, $t0, 1
beq $t3, $0, exit
j vowels

exit:
li $v0, 10
syscall

vowels:
la $s1, vowel
j vowel_loop

vowel_loop:
la $t6,0
lb $t5,0($s1)		# get the vowel we wish to test for
beqz $t5,vowel_check	# any more vowels? if not, fly
addi $s1,$s1,1		# point to next vowel
bne $t3,$t5,vowel_loop	# is string char a vowel? -- if no, loop
addi $t6,$0,1		# yes, increment vowel count
j vowel_check

vowel_check:
beq $t6, $0, print_char	# if not vowel print ay
j print_vowel		# else print way

print_char:
lb $a0, ($t0)		# print current character
beq $a0, $t2, print_head
beq $a0, $t7, print_head
beqz $a0, print_head	# if \0 is found print last vowel
addi $t0, $t0, 1        # go to next char
li $v0, 11
syscall
j print_char

print_head:
move $a0, $t3		#print the non vowel stored
li $v0, 11
syscall
j ayster

ayster:
addi $t0,$t0,1		# point to next vowel
la $a0, ay 		# address of string to print
li $v0, 4
syscall
j loop

print_vowel:
move $a0, $t3		#print the vowel stored
li $v0, 11
syscall
j print_rest

print_rest:
lb $a0, ($t0)		# print current character
beq $a0, $t2, wayster
beqz $a0, wayster	# if \0 is found print last vowel
addi $t0, $t0, 1        # go to next char
li $v0, 11
syscall
j wayster

wayster:
addi $t0,$t0,1		# point to next vowel
la $a0, way 		# address of string to print
li $v0, 4
syscall
j loop