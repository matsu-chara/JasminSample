.class public Calculator
.super java/lang/Object

.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public add(II)I
   .limit stack 2
   .limit locals 4
    iload_1
    iload_2
    iadd
    istore_3
    iload_3
    ireturn
.end method

.method public sub(II)I
   .limit stack 2
   .limit locals 4
    iload_1
    iload_2
    isub
    istore_3
    iload_3
    ireturn
.end method

.method public mul(II)I
   .limit stack 2
   .limit locals 4
    iload_1
    iload_2
    imul
    istore_3
    iload_3
    ireturn
.end method

.method public div(II)I
   .limit stack 2
   .limit locals 4
    iload_1
    iload_2
    idiv
    istore_3
    iload_3
    ireturn
.end method
