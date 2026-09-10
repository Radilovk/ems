.class public final Lorg/apache/poi/ss/formula/ptg/FuncPtg;
.super Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;
.source "FuncPtg.java"


# static fields
.field public static final SIZE:I = 0x3

.field public static final sid:B = 0x21t


# direct methods
.method private constructor <init>(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V
    .locals 3
    .param p1, "funcIndex"    # I
    .param p2, "fm"    # Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    .line 40
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getReturnClassCode()B

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getParameterClassCodes()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;-><init>(II[BI)V

    .line 41
    return-void
.end method

.method public static create(I)Lorg/apache/poi/ss/formula/ptg/FuncPtg;
    .locals 4
    .param p0, "functionIndex"    # I

    .line 44
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    .line 45
    .local v0, "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;-><init>(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V

    return-object v1

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid built-in function index ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static create(Lorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/ptg/FuncPtg;
    .locals 1
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 36
    invoke-interface {p0}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->create(I)Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 58
    const/4 v0, 0x3

    return v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 53
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x21

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 54
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->getFunctionIndex()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 55
    return-void
.end method
