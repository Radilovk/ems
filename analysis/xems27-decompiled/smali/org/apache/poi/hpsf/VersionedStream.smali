.class Lorg/apache/poi/hpsf/VersionedStream;
.super Ljava/lang/Object;
.source "VersionedStream.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _streamName:Lorg/apache/poi/hpsf/IndirectPropertyName;

.field private _versionGuid:Lorg/apache/poi/hpsf/GUID;


# direct methods
.method constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/apache/poi/hpsf/GUID;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hpsf/GUID;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_versionGuid:Lorg/apache/poi/hpsf/GUID;

    .line 32
    new-instance v0, Lorg/apache/poi/hpsf/IndirectPropertyName;

    add-int/lit8 v1, p2, 0x10

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hpsf/IndirectPropertyName;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_streamName:Lorg/apache/poi/hpsf/IndirectPropertyName;

    .line 33
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/poi/hpsf/VersionedStream;->_streamName:Lorg/apache/poi/hpsf/IndirectPropertyName;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/IndirectPropertyName;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
.end method
