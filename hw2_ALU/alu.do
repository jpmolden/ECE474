do wave.do

run 20

#undefined opcode
force in_a     16#00
force in_b     16#00
force opcode 16#0
run 20

# add opcode
force in_a     16#00
force in_b     16#00
force opcode 16#1
run 20

# add opcode
force in_a     16#10
force in_b     16#10
force opcode 16#1
run 20

# add opcode
#should cause a carry
force in_a     16#F0
force in_b     16#F0
force opcode 16#1
run 20

# sub opcode
force in_a     16#00
force in_b     16#00
force opcode 16#2
run 20

# sub opcode
force in_a     16#10
force in_b     16#05
force opcode 16#2
run 20

# sub add opcode
#should cause a carry
force in_a     16#05
force in_b     16#10
force opcode 16#2
run 20

# inc opcode
force in_a     16#05
force in_b     16#XX
force opcode 16#3
run 20

# dec opcode
force in_a     16#05
force in_b     16#XX
force opcode 16#4
run 20

# or opcode
#should cause output of FF
force in_a     16#a5
force in_b     16#5a
force opcode 16#5
run 20

# and opcode
#should cause output of 00
#should assert zero
force in_a     16#F0
force in_b     16#0F
force opcode 16#6
run 20

# xor opcode
#should cause output of F0
force in_a     16#aF
force in_b     16#5F
force opcode 16#7
run 20

# shr opcode
#should cause output of 1E
force in_a     16#3C
force in_b     16#XX
force opcode 16#8
run 20

# shl opcode
#should cause output of 68
force in_a     16#5A
force in_b     16#XX
force opcode 16#9
run 20

# onescomp  opcode
#should cause output of AF
force in_a     16#50
force in_b     16#XX
force opcode 16#A
run 20

# twoscomp  opcode
#should cause output of FB
force in_a     16#05
force in_b     16#XX
force opcode 16#B
run 20

#X alu zero return
force in_a     16#00
force in_b     16#XX
force opcode 16#1
run 20
