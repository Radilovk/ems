.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;
.super Ljava/lang/Object;
.source "DataSpaceMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;,
        Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    return-void
.end method

.method public static addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V
    .locals 15
    .param p0, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const-string v4, "EncryptedPackage"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "StrongEncryptionDataSpace"

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;-><init>([I[Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v0, "dsme":Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;
    new-instance v2, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;

    new-array v1, v1, [Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    aput-object v0, v1, v3

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;-><init>([Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;)V

    move-object v1, v2

    .line 43
    .local v1, "dsm":Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;
    const-string v2, "\u0006DataSpaces/DataSpaceMap"

    invoke-static {p0, v2, v1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 45
    new-instance v2, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;

    const-string v4, "StrongEncryptionTransform"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;-><init>([Ljava/lang/String;)V

    .line 46
    .local v2, "dsd":Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;
    const-string v4, "\u0006DataSpaces/DataSpaceInfo/StrongEncryptionDataSpace"

    invoke-static {p0, v4, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 48
    new-instance v4, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;

    const/4 v6, 0x1

    const-string v7, "{FF9A3F03-56EF-4613-BDD5-5A41C1D07246}"

    const-string v8, "Microsoft.Container.EncryptionTransform"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v14}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 54
    .local v4, "tih":Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;
    new-instance v5, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v3, v6}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;-><init>(Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;ILjava/lang/String;)V

    move-object v3, v5

    .line 55
    .local v3, "irm":Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$IRMDSTransformInfo;
    const-string v5, "\u0006DataSpaces/TransformInfo/StrongEncryptionTransform/\u0006Primary"

    invoke-static {p0, v5, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 57
    new-instance v5, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;

    const-string v7, "Microsoft.Container.DataSpaces"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;-><init>(Ljava/lang/String;IIIIII)V

    .line 58
    .local v5, "dsvi":Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;
    const-string v6, "\u0006DataSpaces/Version"

    invoke-static {p0, v6, v5}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    .line 59
    return-void
.end method

.method public static createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;
    .locals 6
    .param p0, "dir"    # Lorg/apache/poi/poifs/filesystem/DirectoryEntry;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "out"    # Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 64
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    goto :goto_1

    :cond_0
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDirectory(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DirectoryEntry;

    move-result-object v2

    :goto_1
    move-object p0, v2

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x1388

    new-array v1, v1, [B

    .line 70
    .local v1, "buf":[B
    new-instance v2, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    .line 71
    .local v2, "bos":Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;
    invoke-interface {p2, v2}, Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 73
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    .line 75
    .local v3, "fileName":Ljava/lang/String;
    invoke-interface {p0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->hasEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    invoke-interface {p0, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/poi/poifs/filesystem/Entry;->delete()Z

    .line 79
    :cond_2
    invoke-virtual {v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v4

    new-instance v5, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$1;

    invoke-direct {v5, v1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$1;-><init>([B)V

    invoke-interface {p0, v3, v4, v5}, Lorg/apache/poi/poifs/filesystem/DirectoryEntry;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    move-result-object v4

    return-object v4
.end method

.method public static readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;
    .locals 4
    .param p0, "is"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 305
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    .line 306
    .local v0, "length":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1

    .line 312
    div-int/lit8 v1, v0, 0x2

    invoke-static {p0, v1}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "result":Ljava/lang/String;
    rem-int/lit8 v2, v0, 0x4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 317
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    .line 320
    :cond_0
    return-object v1

    .line 307
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "UNICODE-LP-P4 structure is a multiple of 4 bytes. If Padding is present, it MUST be exactly 2 bytes long"

    invoke-direct {v1, v2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readUtf8LPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;
    .locals 7
    .param p0, "is"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 333
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    .line 334
    .local v0, "length":I
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    new-array v1, v0, [B

    .line 341
    .local v1, "data":[B
    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 348
    rem-int/lit8 v2, v0, 0x4

    .line 349
    .local v2, "scratchedBytes":I
    if-lez v2, :cond_1

    .line 350
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    rsub-int/lit8 v4, v2, 0x4

    if-ge v3, v4, :cond_1

    .line 351
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, v1

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v3, v1, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v3

    .line 336
    .end local v1    # "data":[B
    .end local v2    # "scratchedBytes":I
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    .line 337
    .local v1, "skip":I
    if-nez v0, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    return-object v2
.end method

.method public static writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 3
    .param p0, "os"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "string"    # Ljava/lang/String;

    .line 324
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v0

    .line 325
    .local v0, "buf":[B
    array-length v1, v0

    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 326
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 327
    array-length v1, v0

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 328
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 330
    :cond_0
    return-void
.end method

.method public static writeUtf8LPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V
    .locals 5
    .param p0, "os"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p1, "str"    # Ljava/lang/String;

    .line 359
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 364
    .local v2, "buf":[B
    array-length v3, v2

    invoke-interface {p0, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 365
    invoke-interface {p0, v2}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 366
    array-length v3, v2

    rem-int/2addr v3, v1

    .line 367
    .local v3, "scratchBytes":I
    if-lez v3, :cond_3

    .line 368
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    rsub-int/lit8 v4, v3, 0x4

    if-ge v1, v4, :cond_3

    .line 369
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "i":I
    .end local v2    # "buf":[B
    .end local v3    # "scratchBytes":I
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-interface {p0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 361
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 373
    :cond_3
    return-void
.end method
