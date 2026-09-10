.class public Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;
.super Ljava/lang/Object;
.source "DocumentDescriptor.java"


# instance fields
.field private hashcode:I

.field private name:Ljava/lang/String;

.field private path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p2, "name"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->hashcode:I

    .line 44
    if-eqz p1, :cond_2

    .line 48
    if-eqz p2, :cond_1

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .line 57
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->name:Ljava/lang/String;

    .line 58
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "rval":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 75
    if-ne p0, p1, :cond_0

    .line 77
    const/4 v0, 0x1

    goto :goto_1

    .line 81
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;

    .line 83
    .local v1, "descriptor":Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    iget-object v3, v1, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-virtual {v2, v3}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->name:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 87
    .end local v1    # "descriptor":Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;
    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 98
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->hashcode:I

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->hashcode:I

    .line 102
    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->hashcode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 109
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 111
    iget-object v2, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    invoke-virtual {v2, v1}, Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;->getComponent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/filesystem/DocumentDescriptor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
