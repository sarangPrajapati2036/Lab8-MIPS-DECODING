.data
val1: .word 5
val2: .word 10
result: .word 0

.text
main:
    la $t0, val1        # Load address of val1
    la $t1, val2        # Load address of val2
    la $t2, result      # Load address of result

    lw $s0, 0($t0)      # Load val1 into $s0
    lw $s1, 0($t1)      # Load val2 into $s1

    add $s2, $s0, $s1   # Add val1 and val2 → $s2

    sw $s2, 0($t2)      # Store result into memory

    END                 # Marks end of instructions
