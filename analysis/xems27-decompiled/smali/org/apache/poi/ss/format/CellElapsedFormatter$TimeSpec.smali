.class Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;
.super Ljava/lang/Object;
.source "CellElapsedFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/format/CellElapsedFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeSpec"
.end annotation


# instance fields
.field final factor:D

.field final len:I

.field modBy:D

.field final pos:I

.field final type:C


# direct methods
.method public constructor <init>(CIID)V
    .locals 2
    .param p1, "type"    # C
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .param p4, "factor"    # D

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-char p1, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->type:C

    .line 51
    iput p2, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->pos:I

    .line 52
    iput p3, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->len:I

    .line 53
    iput-wide p4, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->factor:D

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->modBy:D

    .line 55
    return-void
.end method


# virtual methods
.method public valueFor(D)J
    .locals 5
    .param p1, "elapsed"    # D

    .line 59
    iget-wide v0, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->modBy:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 60
    iget-wide v0, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->factor:D

    div-double v0, p1, v0

    .local v0, "val":D
    goto :goto_0

    .line 62
    .end local v0    # "val":D
    :cond_0
    iget-wide v2, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->factor:D

    div-double v2, p1, v2

    rem-double v0, v2, v0

    .line 63
    .restart local v0    # "val":D
    :goto_0
    iget-char v2, p0, Lorg/apache/poi/ss/format/CellElapsedFormatter$TimeSpec;->type:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    return-wide v2

    .line 66
    :cond_1
    double-to-long v2, v0

    return-wide v2
.end method
