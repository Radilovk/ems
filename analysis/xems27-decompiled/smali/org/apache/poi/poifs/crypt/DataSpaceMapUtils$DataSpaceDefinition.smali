.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;
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
    name = "DataSpaceDefinition"
.end annotation


# instance fields
.field transformer:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 5
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    .line 163
    .local v0, "headerLength":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v1

    .line 164
    .local v1, "transformReferenceCount":I
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;->transformer:[Ljava/lang/String;

    .line 165
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 166
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;->transformer:[Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->readUnicodeLPP4(Lorg/apache/poi/util/LittleEndianInput;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "transformer"    # [Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;->transformer:[Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 4
    .param p1, "bos"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .line 171
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 172
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;->transformer:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceDefinition;->transformer:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 174
    .local v3, "str":Ljava/lang/String;
    invoke-static {p1, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->writeUnicodeLPP4(Lorg/apache/poi/util/LittleEndianOutput;Ljava/lang/String;)V

    .line 173
    .end local v3    # "str":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method
