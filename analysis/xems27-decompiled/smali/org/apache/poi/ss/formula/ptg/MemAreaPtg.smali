.class public final Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "MemAreaPtg.java"


# static fields
.field private static final SIZE:I = 0x7

.field public static final sid:S = 0x26s


# instance fields
.field private final field_1_reserved:I

.field private final field_2_subex_len:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "subexLen"    # I

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_1_reserved:I

    .line 36
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 40
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_1_reserved:I

    .line 41
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

    .line 42
    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 63
    const/16 v0, 0x20

    return v0
.end method

.method public getLenRefSubexpression()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 55
    const/4 v0, 0x7

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, ""

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 69
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " [len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 49
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x26

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 50
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_1_reserved:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 51
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;->field_2_subex_len:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 52
    return-void
.end method
