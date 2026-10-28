.class public final Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;
.super Ljava/lang/Object;
.source "VoiceDfu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;,
        Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Progress;
    }
.end annotation


# static fields
.field static final DATA:I = 0x4

.field static final INIT:I = 0x1

.field static final MODE_APP:I = 0x4

.field static final PACKET:I = 0x200

.field static final PAGE:I = 0x1000

.field static final START:I = 0x3

.field static final STOP:I = 0x5


# instance fields
.field final io:Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;

.field seq:I


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->io:Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;

    .line 33
    return-void
.end method

.method static crc16([BI)I
    .registers 7

    .prologue
    const v2, 0xffff

    .line 137
    .line 138
    const/4 v0, 0x0

    move v1, v2

    :goto_5
    if-ge v0, p1, :cond_2c

    .line 139
    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v1, v1, 0x8

    const v4, 0xff00

    and-int/2addr v1, v4

    or-int/2addr v1, v3

    .line 140
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v1, v3

    .line 141
    and-int/lit16 v3, v1, 0xff

    shr-int/lit8 v3, v3, 0x4

    xor-int/2addr v1, v3

    .line 142
    shl-int/lit8 v3, v1, 0x8

    shl-int/lit8 v3, v3, 0x4

    xor-int/2addr v1, v3

    .line 143
    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x4

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v1, v3

    .line 144
    and-int/2addr v1, v2

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 146
    :cond_2c
    return v1
.end method

.method static le32([BII)V
    .registers 5

    .prologue
    .line 150
    int-to-byte v0, p2

    aput-byte v0, p0, p1

    .line 151
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 152
    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 153
    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 154
    return-void
.end method


# virtual methods
.method packet([B)[B
    .registers 12

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x1

    const/16 v9, -0x25

    const/16 v8, -0x40

    const/4 v2, 0x0

    .line 82
    iget v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->seq:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->seq:I

    .line 83
    array-length v1, p1

    .line 84
    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    new-array v4, v3, [B

    .line 85
    iget v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->seq:I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->seq:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x8

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    or-int/lit8 v3, v3, 0x40

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    .line 86
    and-int/lit8 v3, v1, 0xf

    shl-int/lit8 v3, v3, 0x4

    or-int/lit8 v3, v3, 0xe

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    .line 87
    and-int/lit16 v3, v1, 0xff0

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v4, v7

    .line 88
    const/4 v3, 0x3

    aget-byte v5, v4, v2

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v4, v0

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    aget-byte v6, v4, v7

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    xor-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 89
    const/4 v3, 0x4

    invoke-static {p1, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    add-int/lit8 v3, v1, 0x4

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->crc16([BI)I

    move-result v3

    .line 91
    add-int/lit8 v5, v1, 0x4

    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 92
    add-int/lit8 v1, v1, 0x5

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    .line 93
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    new-array v5, v1, [B

    .line 95
    aput-byte v8, v5, v2

    .line 96
    array-length v6, v4

    move v1, v2

    move v3, v0

    :goto_76
    if-ge v1, v6, :cond_9c

    aget-byte v7, v4, v1

    .line 97
    if-ne v7, v8, :cond_8a

    .line 98
    add-int/lit8 v7, v3, 0x1

    aput-byte v9, v5, v3

    .line 99
    add-int/lit8 v0, v7, 0x1

    const/16 v3, -0x24

    aput-byte v3, v5, v7

    .line 96
    :goto_86
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_76

    .line 100
    :cond_8a
    if-ne v7, v9, :cond_97

    .line 101
    add-int/lit8 v7, v3, 0x1

    aput-byte v9, v5, v3

    .line 102
    add-int/lit8 v0, v7, 0x1

    const/16 v3, -0x23

    aput-byte v3, v5, v7

    goto :goto_86

    .line 104
    :cond_97
    add-int/lit8 v0, v3, 0x1

    aput-byte v7, v5, v3

    goto :goto_86

    .line 107
    :cond_9c
    add-int/lit8 v0, v3, 0x1

    aput-byte v8, v5, v3

    .line 108
    new-array v1, v0, [B

    .line 109
    invoke-static {v5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    return-object v1
.end method

.method public run([B[BLcom/isaigu/gymapp/wearable/voice/VoiceDfu$Progress;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x67

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->seq:I

    .line 38
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 39
    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->le32([BII)V

    .line 40
    invoke-static {v0, v8, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->le32([BII)V

    .line 41
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->le32([BII)V

    .line 42
    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->le32([BII)V

    .line 43
    const/16 v2, 0x10

    array-length v3, p2

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->le32([BII)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->send([B)V

    .line 45
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->io:Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;

    const-wide/16 v2, 0x1f4

    array-length v4, p2

    div-int/lit16 v4, v4, 0x1000

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    const-wide/16 v6, 0x5a

    mul-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;->sleep(J)V

    .line 47
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 48
    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->le32([BII)V

    .line 49
    array-length v2, p1

    invoke-static {p1, v1, v0, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->send([B)V

    .line 52
    array-length v0, p2

    add-int/lit16 v0, v0, 0x200

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v2, v0, 0x200

    move v0, v1

    .line 53
    :goto_52
    if-ge v0, v2, :cond_7f

    .line 54
    mul-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    array-length v5, p2

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 55
    add-int/lit8 v5, v4, 0x4

    new-array v5, v5, [B

    .line 56
    invoke-static {v5, v1, v8}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->le32([BII)V

    .line 57
    invoke-static {p2, v3, v5, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    invoke-virtual {p0, v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->send([B)V

    .line 59
    rem-int/lit8 v3, v0, 0x8

    if-nez v3, :cond_74

    .line 60
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->io:Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;

    invoke-interface {v3, v10, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;->sleep(J)V

    .line 62
    :cond_74
    if-eqz p3, :cond_7c

    .line 63
    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v2

    invoke-interface {p3, v3}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Progress;->onProgress(I)V

    .line 53
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 66
    :cond_7f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->io:Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;

    invoke-interface {v0, v10, v11}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;->sleep(J)V

    .line 67
    new-array v0, v8, [B

    .line 68
    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->le32([BII)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->send([B)V

    .line 70
    if-eqz p3, :cond_94

    .line 71
    const/16 v0, 0x64

    invoke-interface {p3, v0}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Progress;->onProgress(I)V

    .line 73
    :cond_94
    return-void
.end method

.method send([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->io:Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->packet([B)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;->write([B)V

    .line 77
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->waitAck()V

    .line 78
    return-void
.end method

.method waitAck()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v2, 0x0

    .line 115
    const/16 v0, 0x40

    new-array v4, v0, [B

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v0

    move v3, v2

    move v0, v2

    .line 118
    :goto_f
    if-ge v0, v12, :cond_1d

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v6, v8

    .line 120
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gtz v1, :cond_27

    .line 131
    :cond_1d
    if-ge v3, v12, :cond_49

    .line 132
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no answer"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_27
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu;->io:Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;

    const-wide/16 v10, 0xc8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v5, v8

    invoke-interface {v1, v4, v5}, Lcom/isaigu/gymapp/wearable/voice/VoiceDfu$Io;->read([BI)I

    move-result v5

    move v1, v2

    .line 124
    :goto_35
    if-ge v1, v5, :cond_42

    .line 125
    aget-byte v8, v4, v1

    const/16 v9, -0x40

    if-ne v8, v9, :cond_3f

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 124
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 129
    :cond_42
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v3

    move v3, v1

    .line 130
    goto :goto_f

    .line 134
    :cond_49
    return-void
.end method
