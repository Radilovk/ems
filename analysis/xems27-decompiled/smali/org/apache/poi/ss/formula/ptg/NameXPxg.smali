.class public final Lorg/apache/poi/ss/formula/ptg/NameXPxg;
.super Lorg/apache/poi/ss/formula/ptg/OperandPtg;
.source "NameXPxg.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/ptg/Pxg;


# instance fields
.field private externalWorkbookNumber:I

.field private nameName:Ljava/lang/String;

.field private sheetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "externalWorkbookNumber"    # I
    .param p2, "sheetName"    # Ljava/lang/String;
    .param p3, "nameName"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/OperandPtg;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    .line 36
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    .line 37
    iput-object p2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sheetName"    # Ljava/lang/String;
    .param p2, "nameName"    # Ljava/lang/String;

    .line 41
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getDefaultOperandClass()B
    .locals 1

    .line 96
    const/16 v0, 0x20

    return v0
.end method

.method public getExternalWorkbookNumber()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    return v0
.end method

.method public getNameName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public setSheetName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sheetName"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 78
    .local v1, "needsExclamation":Z
    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    if-ltz v2, :cond_0

    .line 79
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    const/4 v1, 0x1

    .line 84
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->sheetName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 85
    invoke-static {v0, v2}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x1

    .line 88
    :cond_1
    if-eqz v1, :cond_2

    .line 89
    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->externalWorkbookNumber:I

    if-ltz v2, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, "workbook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :cond_0
    const-string v1, "sheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, " ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->nameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XSSF-only Ptg, should not be serialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
