.class Lorg/apache/poi/hpsf/Array$ArrayDimension;
.super Ljava/lang/Object;
.source "Array.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hpsf/Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayDimension"
.end annotation


# static fields
.field static final SIZE:I = 0x8


# instance fields
.field private _indexOffset:I

.field private _size:J


# direct methods
.method constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hpsf/Array$ArrayDimension;->_size:J

    .line 35
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Array$ArrayDimension;->_indexOffset:I

    .line 37
    return-void
.end method

.method static synthetic access$000(Lorg/apache/poi/hpsf/Array$ArrayDimension;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/poi/hpsf/Array$ArrayDimension;

    .line 25
    iget-wide v0, p0, Lorg/apache/poi/hpsf/Array$ArrayDimension;->_size:J

    return-wide v0
.end method
