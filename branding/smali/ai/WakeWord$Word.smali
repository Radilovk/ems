.class final Lcom/isaigu/gymapp/ai/WakeWord$Word;
.super Ljava/lang/Object;
.source "WakeWord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Word"
.end annotation


# instance fields
.field final f:[[B

.field n:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x80

    const/16 v1, 0xd

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    return-void
.end method

.method static unpack([B)Lcom/isaigu/gymapp/ai/WakeWord$Word;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v2, Lcom/isaigu/gymapp/ai/WakeWord$Word;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/WakeWord$Word;-><init>()V

    .line 61
    const/16 v0, 0x80

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    move v0, v1

    .line 62
    :goto_13
    iget v3, v2, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    if-ge v0, v3, :cond_30

    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0xd

    add-int/lit8 v3, v3, 0x1

    array-length v4, p0

    if-gt v3, v4, :cond_30

    .line 63
    mul-int/lit8 v3, v0, 0xd

    add-int/lit8 v3, v3, 0x1

    iget-object v4, v2, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    aget-object v4, v4, v0

    const/16 v5, 0xd

    invoke-static {p0, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 65
    :cond_30
    return-object v2
.end method


# virtual methods
.method pack()[B
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 51
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    mul-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [B

    .line 52
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    move v0, v1

    .line 53
    :goto_f
    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    if-ge v0, v3, :cond_23

    .line 54
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xd

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 56
    :cond_23
    return-object v2
.end method
