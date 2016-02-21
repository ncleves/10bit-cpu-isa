# 10bit-cpu-isa
A 10 bit Single Cycle CPU written primarily in Verilog that solves two "simple" problems. The instruction set architecture was created for this CPU as well.

#####The supported memory addresses:

| Register|Memory Address|
|---|---|
|  r0 |    000|
|  r1 |    001|
|  r2 |    010|
|  r3 |    011|
|  r4 |    100|
|  r5 |    101|
|  r6 |    110|
|  r7 |    111|

#####The supported operations:

Operation|Address|Instruction Type|
|---|---|---|
|HALT| 0000| N/A|
|TBD| 0001| N/A|
|EVENORODD| 0010| Immediate|
|SUB| 0011| Register|
|SET| 0100| Immediate|
|SPLIT| 0101| Immediate|
|LOAD| 0110| Register|
|STORE| 0111| Register|
|BEQ| 1000| Register|
|JUMP| 1001| Jump|
|MOD2| 1010| Register|
|INCR| 1011| Immediate|
|BNE| 1100| Register|
 







