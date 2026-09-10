.class public Lorg/apache/poi/poifs/property/DocumentProperty;
.super Lorg/apache/poi/poifs/property/Property;
.source "DocumentProperty.java"


# instance fields
.field private _document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;


# direct methods
.method protected constructor <init>(I[BI)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/poifs/property/Property;-><init>(I[BI)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/property/DocumentProperty;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I

    .line 46
    invoke-direct {p0}, Lorg/apache/poi/poifs/property/Property;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/property/DocumentProperty;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->setName(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/property/DocumentProperty;->setSize(I)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setNodeColor(B)V

    .line 51
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/property/DocumentProperty;->setPropertyType(B)V

    .line 52
    return-void
.end method


# virtual methods
.method public getDocument()Lorg/apache/poi/poifs/filesystem/POIFSDocument;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/poi/poifs/property/DocumentProperty;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected preWrite()V
    .locals 0

    .line 122
    return-void
.end method

.method public setDocument(Lorg/apache/poi/poifs/filesystem/POIFSDocument;)V
    .locals 0
    .param p1, "doc"    # Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 77
    iput-object p1, p0, Lorg/apache/poi/poifs/property/DocumentProperty;->_document:Lorg/apache/poi/poifs/filesystem/POIFSDocument;

    .line 78
    return-void
.end method

.method public shouldUseSmallBlocks()Z
    .locals 1

    .line 101
    invoke-super {p0}, Lorg/apache/poi/poifs/property/Property;->shouldUseSmallBlocks()Z

    move-result v0

    return v0
.end method

.method public updateSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 129
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/property/DocumentProperty;->setSize(I)V

    .line 130
    return-void
.end method
