.class public final Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
.super Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
.source "FuncVarPtg.java"


# static fields
.field private static final SIZE:I = 0x4

.field public static final SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

.field public static final sid:B = 0x22t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "SUM"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->SUM:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    return-void
.end method

.method private constructor <init>(II[BI)V
    .locals 0
    .param p1, "functionIndex"    # I
    .param p2, "returnClass"    # I
    .param p3, "paramClasses"    # [B
    .param p4, "numArgs"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;-><init>(II[BI)V

    .line 39
    return-void
.end method

.method private static create(II)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 5
    .param p0, "numArgs"    # I
    .param p1, "functionIndex"    # I

    .line 56
    invoke-static {p1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    .line 57
    .local v0, "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-nez v0, :cond_0

    .line 59
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x20

    aput-byte v4, v2, v3

    invoke-direct {v1, p1, v4, v2, p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;-><init>(II[BI)V

    return-object v1

    .line 61
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getReturnClassCode()B

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getParameterClassCodes()[B

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;-><init>(II[BI)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 1
    .param p0, "pName"    # Ljava/lang/String;
    .param p1, "numArgs"    # I

    .line 52
    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->lookupIndex(Ljava/lang/String;)S

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(II)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;
    .locals 2
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 45
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(II)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 71
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 65
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x22

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 66
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getNumberOfOperands()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 67
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->getFunctionIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 68
    return-void
.end method
