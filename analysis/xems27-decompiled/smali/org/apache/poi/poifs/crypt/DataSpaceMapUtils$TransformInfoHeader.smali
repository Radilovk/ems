.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;
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
    name = "TransformInfoHeader"
.end annotation


# instance fields
.field readerVersionMajor:I

.field readerVersionMinor:I

.field transformType:I

.field transformerId:Ljava/lang/String;

.field transformerName:Ljava/lang/String;

.field updaterVersionMajor:I

.field updaterVersionMinor:I

.field writerVersionMajor:I

.field writerVersionMinor:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 2
    .param p1, "transformType"    # I
    .param p2, "transformerId"    # Ljava/lang/String;
    .param p3, "transformerName"    # Ljava/lang/String;
    .param p4, "readerVersionMajor"    # I
    .param p5, "readerVersionMinor"    # I
    .param p6, "updaterVersionMajor"    # I
    .param p7, "updaterVersionMinor"    # I
    .param p8, "writerVersionMajor"    # I
    .param p9, "writerVersionMinor"    # I

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMajor:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMinor:I

    .line 210
    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMinor:I

    .line 211
    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMinor:I

    .line 221
    iput p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformType:I

    .line 222
    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerId:Ljava/lang/String;

    .line 223
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerName:Ljava/lang/String;

    .line 224
    iput p4, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMajor:I

    .line 225
    iput p5, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMinor:I

    .line 226
    iput p6, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMajor:I

    .line 227
    iput p7, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMinor:I

    .line 228
    iput p8, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMajor:I

    .line 229
    iput p9, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMinor:I

    .line 230
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMajor:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMinor:I

    .line 210
    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMinor:I

    .line 211
    iput v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMajor:I

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMinor:I

    .line 234
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    .line 235
    .local v0, "length":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformType:I

    .line 236
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerId:Ljava/lang/String;

    .line 237
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerName:Ljava/lang/String;

    .line 238
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMajor:I

    .line 239
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMinor:I

    .line 240
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMajor:I

    .line 241
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMinor:I

    .line 242
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMajor:I

    .line 243
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMinor:I

    .line 244
    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 3
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 247
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v0

    .line 248
    .local v0, "start":I
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->createDelayedOutput(I)Lorg/apache/poi/util/LittleEndianOutput;

    move-result-object v1

    .line 249
    .local v1, "sizeOut":Lorg/apache/poi/util/LittleEndianOutput;
    iget v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformType:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 250
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerId:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 252
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->transformerName:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 253
    iget v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMajor:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 254
    iget v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->readerVersionMinor:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 255
    iget v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMajor:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 256
    iget v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->updaterVersionMinor:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 257
    iget v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMajor:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 258
    iget v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$TransformInfoHeader;->writerVersionMinor:I

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 259
    return-void
.end method
