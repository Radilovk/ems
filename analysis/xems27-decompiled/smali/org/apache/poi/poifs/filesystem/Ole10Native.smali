.class public Lorg/apache/poi/poifs/filesystem/Ole10Native;
.super Ljava/lang/Object;
.source "Ole10Native.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final ISO1:Ljava/lang/String; = "ISO-8859-1"

.field public static final OLE10_NATIVE:Ljava/lang/String; = "\u0001Ole10Native"


# instance fields
.field private command:Ljava/lang/String;

.field private dataBuffer:[B

.field private fileName:Ljava/lang/String;

.field private flags1:S

.field private flags2:S

.field private flags3:S

.field private label:Ljava/lang/String;

.field private mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

.field private totalSize:I

.field private unknown1:S


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 45
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    .line 46
    const/4 v1, 0x3

    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 49
    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setLabel(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setFileName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setCommand(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->setDataBuffer([B)V

    .line 115
    sget-object v0, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    .line 116
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/poifs/filesystem/Ole10NativeException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 45
    const/4 v1, 0x0

    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    .line 46
    const/4 v2, 0x3

    iput-short v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 49
    iput-short v1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    .line 140
    move v2, p2

    .line 142
    .local v2, "ofs":I
    array-length v3, p1

    add-int/lit8 v4, p2, 0x2

    if-lt v3, v4, :cond_6

    .line 146
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    .line 147
    add-int/lit8 v2, v2, 0x4

    .line 149
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->unparsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    .line 150
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    if-ne v3, v0, :cond_1

    .line 153
    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->compact:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    goto :goto_0

    .line 156
    :cond_0
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->parsed:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    .line 161
    :cond_1
    :goto_0
    sget-object v3, Lorg/apache/poi/poifs/filesystem/Ole10Native$1;->$SwitchMap$org$apache$poi$poifs$filesystem$Ole10Native$EncodingMode:[I

    iget-object v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-virtual {v4}, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-eq v3, v0, :cond_2

    move v0, v1

    .line 206
    .local v0, "dataSize":I
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    goto :goto_1

    .line 161
    .end local v0    # "dataSize":I
    :cond_2
    move v3, v1

    .line 200
    .local v3, "dataSize":I
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 201
    add-int/lit8 v2, v2, 0x2

    .line 202
    iget v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    add-int/lit8 v0, v4, -0x2

    .line 203
    .end local v3    # "dataSize":I
    .restart local v0    # "dataSize":I
    goto :goto_1

    .line 163
    .end local v0    # "dataSize":I
    :cond_3
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v3

    iput-short v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 166
    add-int/lit8 v2, v2, 0x2

    .line 168
    invoke-static {p1, v2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getStringLength([BI)I

    move-result v3

    .line 169
    .local v3, "len":I
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v2, v4}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    .line 170
    add-int/2addr v2, v3

    .line 172
    invoke-static {p1, v2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getStringLength([BI)I

    move-result v3

    .line 173
    add-int/lit8 v4, v3, -0x1

    invoke-static {p1, v2, v4}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    .line 174
    add-int/2addr v2, v3

    .line 176
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    .line 177
    add-int/2addr v2, v0

    .line 179
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 180
    add-int/2addr v2, v0

    .line 182
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    .line 183
    .end local v3    # "len":I
    .local v0, "len":I
    add-int/lit8 v2, v2, 0x4

    .line 184
    add-int/lit8 v3, v0, -0x1

    invoke-static {p1, v2, v3}, Lorg/apache/poi/util/StringUtil;->getFromCompressedUnicode([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    .line 185
    add-int/2addr v2, v0

    .line 187
    iget v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    const-string v4, "Invalid Ole10Native"

    if-lt v3, v2, :cond_5

    .line 191
    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    .line 192
    .local v3, "dataSize":I
    add-int/lit8 v2, v2, 0x4

    .line 194
    if-ltz v3, :cond_4

    iget v5, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    add-int/lit8 v6, v2, -0x4

    sub-int/2addr v5, v6

    if-lt v5, v3, :cond_4

    move v0, v3

    .line 210
    .end local v3    # "dataSize":I
    .local v0, "dataSize":I
    :goto_1
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    .line 211
    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    add-int/2addr v2, v0

    .line 213
    return-void

    .line 195
    .local v0, "len":I
    .restart local v3    # "dataSize":I
    :cond_4
    new-instance v1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    invoke-direct {v1, v4}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    .end local v3    # "dataSize":I
    :cond_5
    new-instance v1, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    invoke-direct {v1, v4}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v0    # "len":I
    :cond_6
    new-instance v0, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;

    const-string v1, "data is too small"

    invoke-direct {v0, v1}, Lorg/apache/poi/poifs/filesystem/Ole10NativeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BIZ)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "plain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/poifs/filesystem/Ole10NativeException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>([BI)V

    .line 130
    return-void
.end method

.method public static createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .locals 5
    .param p0, "directory"    # Lorg/apache/poi/poifs/filesystem/DirectoryNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/poifs/filesystem/Ole10NativeException;
        }
    .end annotation

    .line 98
    const-string v0, "\u0001Ole10Native"

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 100
    .local v0, "nativeEntry":Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/DocumentEntry;->getSize()I

    move-result v1

    new-array v1, v1, [B

    .line 101
    .local v1, "data":[B
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([B)I

    move-result v2

    .line 102
    .local v2, "readBytes":I
    nop

    .line 104
    new-instance v3, Lorg/apache/poi/poifs/filesystem/Ole10Native;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/apache/poi/poifs/filesystem/Ole10Native;-><init>([BI)V

    return-object v3
.end method

.method public static createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Lorg/apache/poi/poifs/filesystem/Ole10Native;
    .locals 1
    .param p0, "poifs"    # Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/poifs/filesystem/Ole10NativeException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->createFromEmbeddedOleObject(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/filesystem/Ole10Native;

    move-result-object v0

    return-object v0
.end method

.method private static getStringLength([BI)I
    .locals 3
    .param p0, "data"    # [B
    .param p1, "ofs"    # I

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "len":I
    :goto_0
    add-int v1, v0, p1

    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    if-eqz v1, :cond_0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 224
    return v0
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getDataBuffer()[B
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    array-length v0, v0

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags1()S
    .locals 1

    .line 243
    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    return v0
.end method

.method public getFlags2()S
    .locals 1

    .line 273
    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    return v0
.end method

.method public getFlags3()S
    .locals 1

    .line 326
    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 234
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->totalSize:I

    return v0
.end method

.method public getUnknown1()S
    .locals 1

    .line 282
    iget-short v0, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    return v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 402
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->command:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setDataBuffer([B)V
    .locals 0
    .param p1, "dataBuffer"    # [B

    .line 410
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->dataBuffer:[B

    .line 411
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 398
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->fileName:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setFlags1(S)V
    .locals 0
    .param p1, "flags1"    # S

    .line 382
    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags1:S

    .line 383
    return-void
.end method

.method public setFlags2(S)V
    .locals 0
    .param p1, "flags2"    # S

    .line 386
    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags2:S

    .line 387
    return-void
.end method

.method public setFlags3(S)V
    .locals 0
    .param p1, "flags3"    # S

    .line 390
    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->flags3:S

    .line 391
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 394
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->label:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setUnknown1(S)V
    .locals 0
    .param p1, "unknown1"    # S

    .line 406
    iput-short p1, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->unknown1:S

    .line 407
    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    new-instance v0, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 342
    .local v0, "leosOut":Lorg/apache/poi/util/LittleEndianOutputStream;
    sget-object v1, Lorg/apache/poi/poifs/filesystem/Ole10Native$1;->$SwitchMap$org$apache$poi$poifs$filesystem$Ole10Native$EncodingMode:[I

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/Ole10Native;->mode:Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/Ole10Native$EncodingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 374
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 375
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_0

    .line 368
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 369
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags1()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 370
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 371
    goto :goto_0

    .line 344
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 345
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Lorg/apache/poi/util/LittleEndianOutputStream;

    invoke-direct {v3, v1}, Lorg/apache/poi/util/LittleEndianOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 348
    .local v3, "leos":Lorg/apache/poi/util/LittleEndianOutputStream;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags1()S

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 349
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getLabel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    .line 350
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write(I)V

    .line 351
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    .line 352
    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write(I)V

    .line 353
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags2()S

    move-result v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 354
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getUnknown1()S

    move-result v6

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 355
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getCommand()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 356
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    .line 357
    invoke-virtual {v3, v4}, Lorg/apache/poi/util/LittleEndianOutputStream;->write(I)V

    .line 358
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataSize()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 359
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getDataBuffer()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->write([B)V

    .line 360
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/Ole10Native;->getFlags3()S

    move-result v2

    invoke-virtual {v3, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeShort(I)V

    .line 361
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianOutputStream;->close()V

    .line 363
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/poi/util/LittleEndianOutputStream;->writeInt(I)V

    .line 364
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 365
    nop

    .line 379
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "leos":Lorg/apache/poi/util/LittleEndianOutputStream;
    :goto_0
    return-void
.end method
