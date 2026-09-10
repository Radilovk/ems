.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;
.super Ljava/lang/Object;
.source "DataSpaceMapUtils.java"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSpaceVersionInfo"
.end annotation


# instance fields
.field featureIdentifier:Ljava/lang/String;

.field readerVersionMajor:I

.field readerVersionMinor:I

.field updaterVersionMajor:I

.field updaterVersionMinor:I

.field writerVersionMajor:I

.field writerVersionMinor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 2
    .param p1, "featureIdentifier"    # Ljava/lang/String;
    .param p2, "readerVersionMajor"    # I
    .param p3, "readerVersionMinor"    # I
    .param p4, "updaterVersionMajor"    # I
    .param p5, "updaterVersionMinor"    # I
    .param p6, "writerVersionMajor"    # I
    .param p7, "writerVersionMinor"    # I

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMajor:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMinor:I

    .line 265
    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMinor:I

    .line 266
    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMinor:I

    .line 284
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->featureIdentifier:Ljava/lang/String;

    .line 285
    iput p2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMajor:I

    .line 286
    iput p3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMinor:I

    .line 287
    iput p4, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMajor:I

    .line 288
    iput p5, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMinor:I

    .line 289
    iput p6, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMajor:I

    .line 290
    iput p7, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMinor:I

    .line 291
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMajor:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMinor:I

    .line 265
    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMinor:I

    .line 266
    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMinor:I

    .line 269
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->featureIdentifier:Ljava/lang/String;

    .line 270
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMajor:I

    .line 271
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMinor:I

    .line 272
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMajor:I

    .line 273
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMinor:I

    .line 274
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMajor:I

    .line 275
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMinor:I

    .line 276
    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 294
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->featureIdentifier:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 295
    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMajor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 296
    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->readerVersionMinor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 297
    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMajor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 298
    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->updaterVersionMinor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 299
    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMajor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 300
    iget v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceVersionInfo;->writerVersionMinor:I

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 301
    return-void
.end method
