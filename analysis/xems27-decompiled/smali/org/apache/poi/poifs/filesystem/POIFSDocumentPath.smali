.class public Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
.super Ljava/lang/Object;
.source "POIFSDocumentPath.java"


# static fields
.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private components:[Ljava/lang/String;

.field private hashcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashcode:I

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;[Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p2, "components"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashcode:I

    .line 116
    if-nez p2, :cond_0

    .line 118
    iget-object v0, p1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v0, v0

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    .line 125
    :goto_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 127
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    aget-object v1, v1, v0

    aput-object v1, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    .end local v0    # "j":I
    :cond_1
    if-eqz p2, :cond_4

    .line 131
    const/4 v0, 0x0

    .restart local v0    # "j":I
    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 133
    aget-object v1, p2, v0

    if-eqz v1, :cond_3

    .line 138
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 140
    sget-object v1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->log:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Directory under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has an empty name, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "not all OLE2 readers will handle this file correctly!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 144
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v2, v0

    aget-object v3, p2, v0

    aput-object v3, v1, v2

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 135
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "components cannot contain null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v0    # "j":I
    :cond_4
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "components"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashcode:I

    .line 68
    if-nez p1, :cond_0

    .line 70
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 77
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "components cannot contain null or empty strings"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v0    # "j":I
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "rval":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 166
    if-ne p0, p1, :cond_0

    .line 168
    const/4 v0, 0x1

    goto :goto_1

    .line 172
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .line 174
    .local v1, "path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    iget-object v2, v1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_2

    .line 176
    const/4 v0, 0x1

    .line 177
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 179
    iget-object v4, v1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v3, v3, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    const/4 v0, 0x0

    .line 183
    goto :goto_1

    .line 177
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "path":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .end local v2    # "j":I
    :cond_2
    :goto_1
    return v0
.end method

.method public getComponent(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .locals 5

    .line 246
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 248
    .local v0, "length":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 250
    return-object v1

    .line 252
    :cond_0
    new-instance v2, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-direct {v2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;-><init>([Ljava/lang/String;)V

    move-object v1, v2

    .line 254
    .local v1, "parent":Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 200
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashcode:I

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 204
    iget v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashcode:I

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashcode:I

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "j":I
    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashcode:I

    return v0
.end method

.method public length()I
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->components:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v0, "b":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->length()I

    move-result v1

    .line 273
    .local v1, "l":I
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 276
    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->getComponent(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 279
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 274
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
