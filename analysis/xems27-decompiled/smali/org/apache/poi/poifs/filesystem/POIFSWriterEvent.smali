.class public Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;
.super Ljava/lang/Object;
.source "POIFSWriterEvent.java"


# instance fields
.field private documentName:Ljava/lang/String;

.field private limit:I

.field private path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

.field private stream:Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;I)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    .param p2, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p3, "documentName"    # Ljava/lang/String;
    .param p4, "limit"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->stream:Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    .line 51
    iput-object p2, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .line 52
    iput-object p3, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->documentName:Ljava/lang/String;

    .line 53
    iput p4, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->limit:I

    .line 54
    return-void
.end method


# virtual methods
.method public getLimit()I
    .locals 1

    .line 89
    iget v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->limit:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->documentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    return-object v0
.end method

.method public getStream()Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/POIFSWriterEvent;->stream:Lorg/apache/poi/poifs/filesystem/DocumentOutputStream;

    return-object v0
.end method
