.class public final Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;
.super Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
.source "HSSFChildAnchor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    .line 38
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 5
    .param p1, "dx1"    # I
    .param p2, "dy1"    # I
    .param p3, "dx2"    # I
    .param p4, "dy2"    # I

    .prologue
    const/4 v4, 0x1

    .line 48
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>(IIII)V

    .line 49
    if-le p1, p3, :cond_0

    .line 50
    iput-boolean v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_isHorizontallyFlipped:Z

    .line 52
    :cond_0
    if-le p2, p4, :cond_1

    .line 53
    iput-boolean v4, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_isVerticallyFlipped:Z

    .line 55
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ddf/EscherChildAnchorRecord;)V
    .locals 0
    .param p1, "escherChildAnchorRecord"    # Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    .line 34
    return-void
.end method


# virtual methods
.method protected createEscherAnchor()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    .line 128
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 138
    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 140
    .local v0, "anchor":Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDx1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDx1()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDx2()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDx2()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDy1()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDy1()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDy2()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDy2()I

    move-result v4

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getDx1()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDx1()I

    move-result v0

    return v0
.end method

.method public getDx2()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDx2()I

    move-result v0

    return v0
.end method

.method public getDy1()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDy1()I

    move-result v0

    return v0
.end method

.method public getDy2()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getDy2()I

    move-result v0

    return v0
.end method

.method protected getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 146
    sget-boolean v0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 147
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method public isHorizontallyFlipped()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_isHorizontallyFlipped:Z

    return v0
.end method

.method public isVerticallyFlipped()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_isVerticallyFlipped:Z

    return v0
.end method

.method public setAnchor(IIII)V
    .locals 1
    .param p1, "dx1"    # I
    .param p2, "dy1"    # I
    .param p3, "dx2"    # I
    .param p4, "dy2"    # I

    .prologue
    .line 104
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->setDx1(I)V

    .line 105
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->setDy1(I)V

    .line 106
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->setDx2(I)V

    .line 107
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->setDy2(I)V

    .line 108
    return-void
.end method

.method public setDx1(I)V
    .locals 1
    .param p1, "dx1"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDx1(I)V

    .line 65
    return-void
.end method

.method public setDx2(I)V
    .locals 1
    .param p1, "dx2"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDx2(I)V

    .line 95
    return-void
.end method

.method public setDy1(I)V
    .locals 1
    .param p1, "dy1"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDy1(I)V

    .line 75
    return-void
.end method

.method public setDy2(I)V
    .locals 1
    .param p1, "dy2"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->_escherChildAnchor:Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDy2(I)V

    .line 85
    return-void
.end method
