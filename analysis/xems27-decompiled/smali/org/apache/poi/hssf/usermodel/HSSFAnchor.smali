.class public abstract Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
.super Ljava/lang/Object;
.source "HSSFAnchor.java"


# instance fields
.field protected _isHorizontallyFlipped:Z

.field protected _isVerticallyFlipped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isHorizontallyFlipped:Z

    .line 33
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isVerticallyFlipped:Z

    .line 36
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->createEscherAnchor()V

    .line 37
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "dx1"    # I
    .param p2, "dy1"    # I
    .param p3, "dx2"    # I
    .param p4, "dy2"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isHorizontallyFlipped:Z

    .line 33
    iput-boolean v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->_isVerticallyFlipped:Z

    .line 40
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->createEscherAnchor()V

    .line 41
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->setDx1(I)V

    .line 42
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->setDy1(I)V

    .line 43
    invoke-virtual {p0, p3}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->setDx2(I)V

    .line 44
    invoke-virtual {p0, p4}, Lorg/apache/poi/hssf/usermodel/HSSFAnchor;->setDy2(I)V

    .line 45
    return-void
.end method

.method public static createAnchorFromEscher(Lorg/apache/poi/ddf/EscherContainerRecord;)Lorg/apache/poi/hssf/usermodel/HSSFAnchor;
    .locals 2
    .param p0, "container"    # Lorg/apache/poi/ddf/EscherContainerRecord;

    .line 48
    const/16 v0, -0xff1

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;-><init>(Lorg/apache/poi/ddf/EscherChildAnchorRecord;)V

    return-object v1

    .line 51
    :cond_0
    const/16 v0, -0xff0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherContainerRecord;->getChildById(S)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(Lorg/apache/poi/ddf/EscherClientAnchorRecord;)V

    return-object v1

    .line 54
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected abstract createEscherAnchor()V
.end method

.method public abstract getDx1()I
.end method

.method public abstract getDx2()I
.end method

.method public abstract getDy1()I
.end method

.method public abstract getDy2()I
.end method

.method protected abstract getEscherAnchor()Lorg/apache/poi/ddf/EscherRecord;
.end method

.method public abstract isHorizontallyFlipped()Z
.end method

.method public abstract isVerticallyFlipped()Z
.end method

.method public abstract setDx1(I)V
.end method

.method public abstract setDx2(I)V
.end method

.method public abstract setDy1(I)V
.end method

.method public abstract setDy2(I)V
.end method
