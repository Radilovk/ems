.class public Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;
.super Ljava/lang/Object;
.source "POIFSReaderEvent.java"


# instance fields
.field private documentName:Ljava/lang/String;

.field private path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

.field private stream:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;


# direct methods
.method constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;Ljava/lang/String;)V
    .locals 0
    .param p1, "stream"    # Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .param p2, "path"    # Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .param p3, "documentName"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->stream:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    .line 50
    iput-object p2, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    .line 51
    iput-object p3, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->documentName:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->documentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->path:Lorg/apache/poi/poifs/filesystem/POIFSDocumentPath;

    return-object v0
.end method

.method public getStream()Lorg/apache/poi/poifs/filesystem/DocumentInputStream;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/poifs/eventfilesystem/POIFSReaderEvent;->stream:Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    return-object v0
.end method
