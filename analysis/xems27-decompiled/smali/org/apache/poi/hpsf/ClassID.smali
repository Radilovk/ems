.class public Lorg/apache/poi/hpsf/ClassID;
.super Ljava/lang/Object;
.source "ClassID.java"


# static fields
.field public static final EQUATION30:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL95:Lorg/apache/poi/hpsf/ClassID;

.field public static final EXCEL97:Lorg/apache/poi/hpsf/ClassID;

.field public static final LENGTH:I = 0x10

.field public static final OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT95:Lorg/apache/poi/hpsf/ClassID;

.field public static final POWERPOINT97:Lorg/apache/poi/hpsf/ClassID;

.field public static final PPT_SHOW:Lorg/apache/poi/hpsf/ClassID;

.field public static final TXT_ONLY:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD95:Lorg/apache/poi/hpsf/ClassID;

.field public static final WORD97:Lorg/apache/poi/hpsf/ClassID;

.field public static final XLS_WORKBOOK:Lorg/apache/poi/hpsf/ClassID;


# instance fields
.field protected bytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{0003000C-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->OLE10_PACKAGE:Lorg/apache/poi/hpsf/ClassID;

    .line 34
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{64818D10-4F9B-11CF-86EA-00AA00B929E8}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->PPT_SHOW:Lorg/apache/poi/hpsf/ClassID;

    .line 35
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020841-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->XLS_WORKBOOK:Lorg/apache/poi/hpsf/ClassID;

    .line 36
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{5e941d80-bf96-11cd-b579-08002b30bfeb}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->TXT_ONLY:Lorg/apache/poi/hpsf/ClassID;

    .line 37
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020820-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL97:Lorg/apache/poi/hpsf/ClassID;

    .line 38
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020810-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EXCEL95:Lorg/apache/poi/hpsf/ClassID;

    .line 39
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020906-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD97:Lorg/apache/poi/hpsf/ClassID;

    .line 40
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v2, "{00020900-0000-0000-C000-000000000046}"

    invoke-direct {v0, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->WORD95:Lorg/apache/poi/hpsf/ClassID;

    .line 41
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT97:Lorg/apache/poi/hpsf/ClassID;

    .line 42
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{EA7BAE70-FB3B-11CD-A903-00AA00510EA3}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->POWERPOINT95:Lorg/apache/poi/hpsf/ClassID;

    .line 43
    new-instance v0, Lorg/apache/poi/hpsf/ClassID;

    const-string v1, "{0002CE02-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/hpsf/ClassID;->EQUATION30:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 75
    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "externalForm"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 87
    const-string v1, "[{}-]"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "clsStr":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 89
    iget-object v3, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    div-int/lit8 v4, v2, 0x2

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 88
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "src"    # [B
    .param p2, "offset"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/ClassID;->read([BI)[B

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 223
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lorg/apache/poi/hpsf/ClassID;

    if-nez v1, :cond_0

    goto :goto_1

    .line 225
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/hpsf/ClassID;

    .line 226
    .local v1, "cid":Lorg/apache/poi/hpsf/ClassID;
    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    array-length v2, v2

    iget-object v3, v1, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 227
    return v0

    .line 228
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 229
    aget-byte v3, v3, v2

    iget-object v4, v1, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_2

    .line 230
    return v0

    .line 228
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 224
    .end local v1    # "cid":Lorg/apache/poi/hpsf/ClassID;
    :cond_4
    :goto_1
    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 104
    const/16 v0, 0x10

    return v0
.end method

.method public read([BI)[B
    .locals 4
    .param p1, "src"    # [B
    .param p2, "offset"    # I

    .line 148
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    .line 151
    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 152
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 153
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 154
    add-int/lit8 v2, p2, 0x0

    aget-byte v2, p1, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    .line 157
    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    .line 158
    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    .line 161
    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    .line 162
    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    .line 165
    const/16 v1, 0x8

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 166
    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    add-int v3, v1, p2

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    return-object v0
.end method

.method public setBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 131
    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 255
    .local v0, "sbClassId":Ljava/lang/StringBuffer;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 258
    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 260
    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write([BI)V
    .locals 4
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayStoreException;
        }
    .end annotation

    .line 188
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 193
    add-int/lit8 v0, p2, 0x0

    iget-object v2, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    .line 194
    add-int/lit8 v0, p2, 0x1

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    .line 195
    add-int/lit8 v0, p2, 0x2

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    .line 196
    add-int/lit8 v0, p2, 0x3

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    .line 199
    add-int/lit8 v0, p2, 0x4

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    .line 200
    add-int/lit8 v0, p2, 0x5

    const/4 v3, 0x4

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    .line 203
    add-int/lit8 v0, p2, 0x6

    const/4 v3, 0x7

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    .line 204
    add-int/lit8 v0, p2, 0x7

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    aput-byte v2, p1, v0

    .line 207
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 208
    add-int v2, v0, p2

    iget-object v3, p0, Lorg/apache/poi/hpsf/ClassID;->bytes:[B

    aget-byte v3, v3, v0

    aput-byte v3, p1, v2

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 189
    :cond_1
    new-instance v0, Ljava/lang/ArrayStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination byte[] must have room for at least 16 bytes, but has a length of only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
