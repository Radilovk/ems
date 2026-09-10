.class final Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;
.super Ljava/lang/Object;
.source "HSSFEvaluationWorkbook.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Name"
.end annotation


# instance fields
.field private final _index:I

.field private final _nameRecord:Lorg/apache/poi/hssf/record/NameRecord;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/NameRecord;I)V
    .locals 0
    .param p1, "nameRecord"    # Lorg/apache/poi/hssf/record/NameRecord;
    .param p2, "index"    # I

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/hssf/record/NameRecord;

    .line 212
    iput p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;->_index:I

    .line 213
    return-void
.end method


# virtual methods
.method public createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;
    .locals 2

    .line 230
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    iget v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;->_index:I

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;-><init>(I)V

    return-object v0
.end method

.method public getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFormula()Z
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->hasFormula()Z

    move-result v0

    return v0
.end method

.method public isFunctionName()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->isFunctionName()Z

    move-result v0

    return v0
.end method

.method public isRange()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/hssf/record/NameRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->hasFormula()Z

    move-result v0

    return v0
.end method
