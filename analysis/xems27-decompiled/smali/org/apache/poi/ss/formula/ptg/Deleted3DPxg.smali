.class public final Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "Deleted3DPxg.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/Pxg;


# instance fields
.field private externalWorkbookNumber:I

.field private sheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "externalWorkbookNumber"    # I
    .param p2, "sheetName"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    .line 33
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    .line 34
    iput-object p2, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->sheetName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;-><init>(ILjava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 83
    const/16 v0, 0x20

    return v0
.end method

.method public getExternalWorkbookNumber()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->sheetName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    if-ltz v1, :cond_0

    .line 70
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 72
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->sheetName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 75
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 77
    :cond_1
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 78
    const/16 v1, 0x17

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/ErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->externalWorkbookNumber:I

    if-ltz v2, :cond_0

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, "workbook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->getExternalWorkbookNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :cond_0
    const-string v1, "sheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/Deleted3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, " ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const/16 v1, 0x17

    invoke-static {v1}, Lorg/apache/poi/ss/usermodel/ErrorConstants;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XSSF-only Ptg, should not be serialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
