.class public final Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "MemFuncPtg.java"


# static fields
.field public static final sid:B = 0x29t


# instance fields
.field private final field_1_len_ref_subexpression:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "subExprLen"    # I

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 40
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 36
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getLenRefSubexpression()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    return v0
.end method

.method public getNumberOfOperands()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 44
    const/4 v0, 0x3

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, ""

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 70
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " [len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 48
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x29

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 49
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;->field_1_len_ref_subexpression:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 50
    return-void
.end method
