.class public abstract Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperationPtg;
.source "ValueOperatorPtg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultOperandClass()B
    .locals 1

    .line 39
    const/16 v0, 0x20

    return v0
.end method

.method protected abstract getSid()B
.end method

.method public final getSize()I
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public final isBaseToken()Z
    .locals 1

    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public final toFormulaString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "toFormulaString(String[] operands) should be used for subclasses of OperationPtgs"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 43
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;->getSid()B

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 44
    return-void
.end method
