.class public Lcn/icomon/icdevicemanager/common/ICStreamBuffer;
.super Ljava/lang/Object;
.source "ICStreamBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;
    }
.end annotation


# instance fields
.field private m_bCanFree:Z

.field private m_bLittle:Z

.field private m_nCapacity:Ljava/lang/Integer;

.field private m_nPos:Ljava/lang/Integer;

.field private m_nSize:Ljava/lang/Integer;

.field private m_pCur:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWithData([B)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;
    .registers 2

    .line 29
    new-instance v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;-><init>()V

    .line 30
    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->initWithData([B)V

    return-object v0
.end method

.method public static createWithSize(Ljava/lang/Integer;)Lcn/icomon/icdevicemanager/common/ICStreamBuffer;
    .registers 2

    .line 23
    new-instance v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;-><init>()V

    .line 24
    invoke-direct {v0, p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->initWithSize(Ljava/lang/Integer;)V

    return-object v0
.end method

.method private initWithData([B)V
    .registers 5

    .line 53
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->innerInit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bCanFree:Z

    .line 55
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    .line 57
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 58
    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 59
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    .line 61
    :try_start_24
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2c

    :catch_28
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2c
    return-void
.end method

.method private initWithSize(Ljava/lang/Integer;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->innerInit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bCanFree:Z

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    return-void
.end method

.method private innerInit()V
    .registers 3

    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bCanFree:Z

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    iput-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bLittle:Z

    return-void
.end method


# virtual methods
.method public Clear()V
    .registers 2

    const/4 v0, 0x0

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    return-void
.end method

.method public Close()V
    .registers 4

    .line 258
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Clear()V

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bCanFree:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    :cond_a
    const/4 v0, 0x0

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    .line 265
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    return-void
.end method

.method public GetBuffer()[B
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    .line 276
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->GetBuffer(II)[B

    move-result-object v0

    return-object v0
.end method

.method public GetBuffer(II)[B
    .registers 6

    add-int v0, p1, p2

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    .line 281
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 284
    :cond_c
    new-array v0, p2, [B

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    const/4 v2, 0x0

    .line 285
    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public GetCapacity()I
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    .line 228
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public GetPosition()I
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public GetSize()I
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    .line 233
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public IsLittleEndian()Z
    .registers 2

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bLittle:Z

    return v0
.end method

.method public Read([BLjava/lang/Integer;)I
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 118
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_17

    .line 119
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_17
    if-gtz v0, :cond_1b

    const/4 p1, 0x0

    return p1

    :cond_1b
    iget-object p2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 126
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_21
    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_3b

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    aget-byte v2, v2, p2

    aput-byte v2, p1, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_21

    :cond_3b
    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    return v0
.end method

.method public ReadByte()I
    .registers 3

    .line 69
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 74
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public ReadInt()I
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 104
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v3, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 105
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v4, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 106
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bLittle:Z

    if-nez v1, :cond_59

    .line 109
    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->ConvertIntEndian(I)I

    move-result v0

    :cond_59
    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    return v0
.end method

.method public ReadShort()I
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bLittle:Z

    if-nez v1, :cond_37

    .line 89
    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->ConvertShortEndian(I)I

    move-result v0

    :cond_37
    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public RecordSize()V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 321
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_12

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    :cond_12
    return-void
.end method

.method public Resize(I)Z
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    .line 306
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x8

    .line 309
    new-array p1, v0, [B

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    .line 311
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    const/4 p1, 0x1

    return p1
.end method

.method public Rewind()V
    .registers 2

    const/4 v0, 0x0

    .line 291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    return-void
.end method

.method public Seek(Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;I)I
    .registers 4

    .line 238
    sget-object v0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$1;->$SwitchMap$cn$icomon$icdevicemanager$common$ICStreamBuffer$ICStreamBufferSeek:[I

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer$ICStreamBufferSeek;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_30

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    goto :goto_42

    :cond_12
    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 248
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    goto :goto_42

    :cond_22
    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 244
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    goto :goto_42

    :cond_30
    const/4 p1, 0x0

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 241
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    :goto_42
    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 253
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public SetLittleEndian(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bLittle:Z

    return-void
.end method

.method public Skip(I)V
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 218
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    return-void
.end method

.method public WriteByte(B)I
    .registers 5

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1e

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bCanFree:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    const/16 v0, 0x80

    .line 138
    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Resize(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    return v2

    :cond_1e
    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 144
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-byte p1, v0, v2

    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 146
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->RecordSize()V

    return v1
.end method

.method public WriteData([B)I
    .registers 7

    .line 197
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_13

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 198
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_1e

    :cond_13
    iget-boolean v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bCanFree:Z

    if-eqz v2, :cond_41

    .line 200
    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Resize(I)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    :cond_1e
    :goto_1e
    if-ge v1, v0, :cond_30

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v3, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 208
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_30
    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 211
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 212
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->RecordSize()V

    return v0

    :cond_41
    return v1
.end method

.method public WriteInt(I)I
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1e

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bCanFree:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    const/16 v0, 0x80

    .line 176
    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Resize(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    return v2

    :cond_1e
    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bLittle:Z

    if-nez v0, :cond_26

    .line 183
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->ConvertIntEndian(I)I

    move-result p1

    :cond_26
    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 185
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, p1

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 186
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/high16 v3, 0xff0000

    and-int/2addr v3, p1

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 187
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const v3, 0xff00

    and-int/2addr v3, p1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 188
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 190
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 191
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->RecordSize()V

    return v1
.end method

.method public WriteShort(S)I
    .registers 6

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nCapacity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1e

    iget-boolean v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bCanFree:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    const/16 v0, 0x80

    .line 154
    invoke-virtual {p0, v0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->Resize(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    return v2

    :cond_1e
    const v0, 0xffff

    and-int/2addr v0, p1

    iget-boolean v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_bLittle:Z

    if-nez v2, :cond_2a

    .line 162
    invoke-static {p1}, Lcn/icomon/icdevicemanager/common/ICCommon;->ConvertShortEndian(I)I

    move-result v0

    :cond_2a
    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 164
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_pCur:[B

    iget-object v2, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 165
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 166
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 167
    invoke-virtual {p0}, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->RecordSize()V

    return v1
.end method

.method public isEOF()Z
    .registers 3

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nPos:Ljava/lang/Integer;

    .line 328
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/icomon/icdevicemanager/common/ICStreamBuffer;->m_nSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
