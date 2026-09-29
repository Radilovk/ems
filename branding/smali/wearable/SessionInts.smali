.class final Lcom/isaigu/gymapp/wearable/SessionInts;
.super Ljava/lang/Object;
.source "SessionInts.java"


# instance fields
.field private a:[I

.field private n:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->a:[I

    return-void
.end method


# virtual methods
.method add(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 9
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->n:I

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->a:[I

    array-length v1, v1

    if-ne v0, v1, :cond_18

    .line 10
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 11
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->a:[I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->n:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->a:[I

    .line 14
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->a:[I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->n:I

    aput p1, v0, v1

    .line 15
    return-void
.end method

.method clear()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->n:I

    .line 20
    return-void
.end method

.method get(I)I
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->a:[I

    aget v0, v0, p1

    return v0
.end method

.method json(Ljava/lang/StringBuilder;)V
    .registers 4

    .prologue
    .line 31
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->n:I

    if-ge v0, v1, :cond_1b

    .line 33
    if-lez v0, :cond_11

    .line 34
    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    :cond_11
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->a:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 38
    :cond_1b
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    return-void
.end method

.method size()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/isaigu/gymapp/wearable/SessionInts;->n:I

    return v0
.end method
