.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;
.super Ljava/lang/Object;
.source "LookupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinarySearchIndexes"
.end annotation


# instance fields
.field private _highIx:I

.field private _lowIx:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "highIx"    # I

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->_lowIx:I

    .line 527
    iput p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->_highIx:I

    .line 528
    return-void
.end method


# virtual methods
.method public getHighIx()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->_highIx:I

    return v0
.end method

.method public getLowIx()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->_lowIx:I

    return v0
.end method

.method public getMidIx()I
    .locals 3

    .prologue
    .line 534
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->_highIx:I

    iget v2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->_lowIx:I

    sub-int v0, v1, v2

    .line 535
    .local v0, "ixDiff":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 536
    const/4 v1, -0x1

    .line 538
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->_lowIx:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public narrowSearch(IZ)V
    .locals 0
    .param p1, "midIx"    # I
    .param p2, "isLessThan"    # Z

    .prologue
    .line 548
    if-eqz p2, :cond_0

    .line 549
    iput p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->_highIx:I

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    iput p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$BinarySearchIndexes;->_lowIx:I

    goto :goto_0
.end method
