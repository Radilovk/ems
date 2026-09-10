.class public Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;
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
    name = "DataSpaceMap"
.end annotation


# instance fields
.field entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 5
    .param p1, "is"    # Lorg/apache/poi/util/LittleEndianInput;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v2

    .line 100
    .local v2, "length":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    .line 101
    .local v0, "entryCount":I
    new-array v3, v0, [Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    iput-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 103
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    new-instance v4, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    invoke-direct {v4, p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    aput-object v4, v3, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;)V
    .locals 0
    .param p1, "entries"    # [Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    .line 95
    return-void
.end method


# virtual methods
.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 5
    .param p1, "os"    # Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    .prologue
    .line 108
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 109
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    array-length v4, v4

    invoke-virtual {p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMap;->entries:[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;

    .local v0, "arr$":[Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 111
    .local v1, "dsme":Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;
    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;->write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "dsme":Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils$DataSpaceMapEntry;
    :cond_0
    return-void
.end method
