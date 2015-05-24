.class public ExeCalculator
.super java/lang/Object

.method public ()V
    aload_0
    invokespecial java/lang/Object/()V
    return
.end method

.method public static main([Ljava/lang/String;)V
    .limit stack 10
    .limit locals 10

    ; get op
    aload_0
    iconst_0
    aaload
    astore 1

    ; get a
    aload_0
    iconst_1
    aaload
    invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I
    istore_2

    ; get b
    aload_0
    iconst_2
    aaload
    invokestatic java/lang/Integer.parseInt(Ljava/lang/String;)I
    istore_3

    ; new Calculator
    new Calculator
    dup
    invokespecial Calculator/<init>()V

    ; branch if not add
    aload_1
    ldc "add"
    invokevirtual java/lang/String.equals(Ljava/lang/Object;)Z
    ifeq NOT_ADD

    ; add
    iload_2
    iload_3
    invokevirtual Calculator/add(II)I
    istore 4

    ; print result
    getstatic java/lang/System/out Ljava/io/PrintStream;
    iload 4
    invokevirtual java/io/PrintStream/println(I)V

    return

NOT_ADD:
    ; branch if not sub
    aload_1
    ldc "sub"
    invokevirtual java/lang/String.equals(Ljava/lang/Object;)Z
    ifeq NOT_SUB

    ; sub
    iload_2
    iload_3
    invokevirtual Calculator/sub(II)I
    istore 4

    ; print result
    getstatic java/lang/System/out Ljava/io/PrintStream;
    iload 4
    invokevirtual java/io/PrintStream/println(I)V

    return

NOT_SUB:
    ; branch if not mul
    aload_1
    ldc "mul"
    invokevirtual java/lang/String.equals(Ljava/lang/Object;)Z
    ifeq NOT_MUL

    ; mul
    iload_2
    iload_3
    invokevirtual Calculator/mul(II)I
    istore 4

    ; print result
    getstatic java/lang/System/out Ljava/io/PrintStream;
    iload 4
    invokevirtual java/io/PrintStream/println(I)V

    return

NOT_MUL:
    ; branch if not div
    aload_1
    ldc "div"
    invokevirtual java/lang/String.equals(Ljava/lang/Object;)Z
    ifeq NOT_DIV

    ; div
    iload_2
    iload_3
    invokevirtual Calculator/div(II)I
    istore 4

    ; print result
    getstatic java/lang/System/out Ljava/io/PrintStream;
    iload 4
    invokevirtual java/io/PrintStream/println(I)V

    return

NOT_DIV:
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc "invalid arithmetic operator"
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
    return
.end method
