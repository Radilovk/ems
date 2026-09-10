.class public Lorg/apache/poi/hssf/model/ConvertAnchor;
.super Ljava/lang/Object;
.source "ConvertAnchor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAnchor(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/ddf/EscherRecord;
    .locals 4
    .param p0, "userAnchor"    # Lorg/apache/poi/hssf/usermodel/HSSFAnchor;

    .line 34
    instance-of v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 36
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    .line 38
    .local v0, "a":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    new-instance v2, Lorg/apache/poi/ddf/EscherClientAnchorRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;-><init>()V

    .line 39
    .local v2, "anchor":Lorg/apache/poi/ddf/EscherClientAnchorRecord;
    const/16 v3, -0xff0

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRecordId(S)V

    .line 40
    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setOptions(S)V

    .line 41
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getAnchorType()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setFlag(S)V

    .line 42
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol1(S)V

    .line 43
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx1()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx1(S)V

    .line 44
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow1(S)V

    .line 45
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy1()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDy1(S)V

    .line 47
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol1()S

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getCol2()S

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setCol2(S)V

    .line 48
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDx2()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDx2(S)V

    .line 49
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow1()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getRow2()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setRow2(S)V

    .line 50
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;->getDy2()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->setDy2(S)V

    .line 51
    return-object v2

    .line 53
    .end local v0    # "a":Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;
    .end local v2    # "anchor":Lorg/apache/poi/ddf/EscherClientAnchorRecord;
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;

    .line 54
    .local v0, "a":Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;
    new-instance v2, Lorg/apache/poi/ddf/EscherChildAnchorRecord;

    invoke-direct {v2}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;-><init>()V

    .line 55
    .local v2, "anchor":Lorg/apache/poi/ddf/EscherChildAnchorRecord;
    const/16 v3, -0xff1

    invoke-virtual {v2, v3}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setRecordId(S)V

    .line 56
    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setOptions(S)V

    .line 57
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDx1()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDx2()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDx1(I)V

    .line 58
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDy1()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDy2()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDy1(I)V

    .line 59
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDx2()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDx1()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDx2(I)V

    .line 60
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDy2()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFChildAnchor;->getDy1()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->setDy2(I)V

    .line 61
    return-object v2
.end method
