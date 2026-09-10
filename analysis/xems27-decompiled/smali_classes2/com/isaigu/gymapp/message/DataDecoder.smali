.class public Lcom/isaigu/gymapp/message/DataDecoder;
.super Ljava/lang/Object;
.source "DataDecoder.java"


# instance fields
.field private buffer:[B

.field private index:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/message/DataDecoder;->buffer:[B

    .line 9
    if-nez p1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->buffer:[B

    .line 13
    return-void
.end method


# virtual methods
.method protected clone()Lcom/isaigu/gymapp/message/DataDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/isaigu/gymapp/message/DataDecoder;

    iget-object v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->buffer:[B

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/message/DataDecoder;-><init>([B)V

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/message/DataDecoder;->clone()Lcom/isaigu/gymapp/message/DataDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataDecoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/message/ByteUtil;->byteToBool([BI)Z

    move-result v0

    .line 60
    .local v0, "b":Z
    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    .line 61
    return v0
.end method

.method public getByte()B
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataDecoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getDouble()D
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/isaigu/gymapp/message/DataDecoder;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/isaigu/gymapp/message/DataDecoder;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataDecoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/message/ByteUtil;->bytesToInt([BI)I

    move-result v0

    .line 34
    .local v0, "i":I
    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    .line 35
    return v0
.end method

.method public getLong()J
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataDecoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/message/ByteUtil;->bytesToLong([BI)J

    move-result-wide v0

    .line 53
    .local v0, "s":J
    iget v2, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    .line 54
    return-wide v0
.end method

.method public getShort()S
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataDecoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/message/ByteUtil;->bytesToShort([BI)S

    move-result v0

    .line 41
    .local v0, "s":S
    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    .line 42
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/isaigu/gymapp/message/DataDecoder;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/message/DataDecoder;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "length"    # I

    .line 26
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataDecoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/message/ByteUtil;->bytesToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "string":Ljava/lang/String;
    iget v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    .line 28
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/message/DataDecoder;->index:I

    .line 67
    return-void
.end method
