.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;
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
    name = "DataSpaceMapEntry"
.end annotation


# instance fields
.field dataSpaceName:Ljava/lang/String;

.field referenceComponent:[Ljava/lang/String;

.field referenceComponentType:[I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 5
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    .line 130
    .local v0, "length":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    .line 131
    .local v1, "referenceComponentCount":I
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponentType:[I

    .line 132
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    .line 133
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 134
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponentType:[I

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    aput v4, v3, v2

    .line 135
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    :cond_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->dataSpaceName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceComponentType"    # [I
    .param p2, "referenceComponent"    # [Ljava/lang/String;
    .param p3, "dataSpaceName"    # Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponentType:[I

    .line 123
    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->dataSpaceName:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 4
    .param p1, "os"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 141
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v0

    .line 142
    .local v0, "start":I
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->createDelayedOutput(I)Lorg/apache/poi/util/LittleEndianOutput;

    move-result-object v1

    .line 143
    .local v1, "sizeOut":Lorg/apache/poi/util/LittleEndianOutput;
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 144
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 145
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponentType:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 146
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->referenceComponent:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->dataSpaceName:Ljava/lang/String;

    invoke-static {p1, v2}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 150
    return-void
.end method
