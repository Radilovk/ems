.class public final Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
.super Ljava/lang/Object;
.source "POIFSBigBlockSize.java"


# instance fields
.field private bigBlockSize:I

.field private headerValue:S


# direct methods
.method protected constructor <init>(IS)V
    .locals 0
    .param p1, "bigBlockSize"    # I
    .param p2, "headerValue"    # S

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->bigBlockSize:I

    .line 34
    iput-short p2, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->headerValue:S

    .line 35
    return-void
.end method


# virtual methods
.method public getBATEntriesPerBlock()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->bigBlockSize:I

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getBigBlockSize()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->bigBlockSize:I

    return v0
.end method

.method public getHeaderValue()S
    .locals 1

    .line 48
    iget-short v0, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->headerValue:S

    return v0
.end method

.method public getNextXBATChainOffset()I
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getXBATEntriesPerBlock()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getPropertiesPerBlock()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->bigBlockSize:I

    div-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public getXBATEntriesPerBlock()I
    .locals 1

    .line 59
    invoke-virtual {p0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBATEntriesPerBlock()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
