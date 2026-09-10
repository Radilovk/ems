.class public Lorg/apache/poi/hssf/dev/FormulaViewer;
.super Ljava/lang/Object;
.source "FormulaViewer.java"


# instance fields
.field private file:Ljava/lang/String;

.field private list:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->list:Z

    .line 49
    return-void
.end method

.method private static composeFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;
    .locals 2
    .param p0, "record"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .prologue
    .line 181
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->toFormulaString(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formulaString(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;
    .locals 5
    .param p1, "record"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    .line 159
    .local v3, "tokens":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 160
    aget-object v2, v3, v1

    .line 161
    .local v2, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toFormulaString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 173
    :goto_1
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :sswitch_0
    const-string v4, "(R)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 167
    :sswitch_1
    const-string v4, "(V)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 170
    :sswitch_2
    const-string v4, "(A)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 175
    .end local v2    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method private listFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 8
    .param p1, "record"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .prologue
    .line 82
    const-string/jumbo v3, "~"

    .line 83
    .local v3, "sep":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    .line 85
    .local v5, "tokens":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v2, v5

    .line 87
    .local v2, "numptgs":I
    add-int/lit8 v6, v2, -0x1

    aget-object v4, v5, v6

    .line 88
    .local v4, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v6, v4, Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    if-eqz v6, :cond_0

    .line 89
    add-int/lit8 v6, v2, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "numArg":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, "buf":Ljava/lang/StringBuffer;
    instance-of v6, v4, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    if-eqz v6, :cond_1

    .line 131
    :goto_1
    return-void

    .line 91
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "numArg":Ljava/lang/String;
    :cond_0
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "numArg":Ljava/lang/String;
    goto :goto_0

    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    move-object v6, v4

    .line 97
    check-cast v6, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->toFormulaString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 111
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const/4 v6, 0x1

    if-le v2, v6, :cond_2

    .line 113
    add-int/lit8 v6, v2, -0x2

    aget-object v4, v5, v6

    .line 114
    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v6

    sparse-switch v6, :sswitch_data_1

    .line 128
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :sswitch_0
    const-string v6, "REF"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 104
    :sswitch_1
    const-string v6, "VALUE"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 107
    :sswitch_2
    const-string v6, "ARRAY"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 116
    :sswitch_3
    const-string v6, "REF"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 119
    :sswitch_4
    const-string v6, "VALUE"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 122
    :sswitch_5
    const-string v6, "ARRAY"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 126
    :cond_2
    const-string v6, "VALUE"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch

    .line 114
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 212
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    aget-object v2, p0, v4

    const-string v3, "--help"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "FormulaViewer .8 proof that the devil lies in the details (or just in BIFF8 files in general)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "usage: Give me a big fat file name"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 218
    :cond_1
    aget-object v2, p0, v4

    const-string v3, "--listFunctions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    :try_start_0
    new-instance v1, Lorg/apache/poi/hssf/dev/FormulaViewer;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;-><init>()V

    .line 221
    .local v1, "viewer":Lorg/apache/poi/hssf/dev/FormulaViewer;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/dev/FormulaViewer;->setFile(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/dev/FormulaViewer;->setList(Z)V

    .line 223
    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v1    # "viewer":Lorg/apache/poi/hssf/dev/FormulaViewer;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Whoops!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v1, Lorg/apache/poi/hssf/dev/FormulaViewer;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;-><init>()V

    .line 236
    .restart local v1    # "viewer":Lorg/apache/poi/hssf/dev/FormulaViewer;
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/dev/FormulaViewer;->setFile(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 239
    .end local v1    # "viewer":Lorg/apache/poi/hssf/dev/FormulaViewer;
    :catch_1
    move-exception v0

    .line 241
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Whoops!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public parseFormulaRecord(Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 4
    .param p1, "record"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .prologue
    .line 143
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "=============================="

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 145
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", col = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getColumn()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getXFIndex()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 148
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", number of ptgs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getOptions()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RPN List = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->formulaString(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Formula text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->composeFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->file:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecords(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    .line 66
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 68
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/Record;

    .line 70
    .local v1, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 72
    iget-boolean v3, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->list:Z

    if-eqz v3, :cond_1

    .line 73
    check-cast v1, Lorg/apache/poi/hssf/record/FormulaRecord;

    .end local v1    # "record":Lorg/apache/poi/hssf/record/Record;
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->listFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 66
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .restart local v1    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    check-cast v1, Lorg/apache/poi/hssf/record/FormulaRecord;

    .end local v1    # "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->parseFormulaRecord(Lorg/apache/poi/hssf/record/FormulaRecord;)V

    goto :goto_1

    .line 79
    :cond_2
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->file:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setList(Z)V
    .locals 0
    .param p1, "list"    # Z

    .prologue
    .line 198
    iput-boolean p1, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->list:Z

    .line 199
    return-void
.end method
