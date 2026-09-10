.class public Lorg/apache/poi/hssf/dev/FormulaViewer;
.super Ljava/lang/Object;
.source "FormulaViewer.java"


# instance fields
.field private file:Ljava/lang/String;

.field private list:Z


# direct methods
.method public constructor <init>()V
    .locals 1

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
    .locals 7
    .param p1, "record"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 159
    .local v1, "tokens":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 160
    aget-object v3, v1, v2

    .line 161
    .local v3, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toFormulaString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    const/16 v6, 0x40

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    const-string v4, "(A)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 167
    :cond_1
    const-string v4, "(V)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    goto :goto_1

    .line 164
    :cond_2
    const-string v4, "(R)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    nop

    .line 173
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    .end local v3    # "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private listFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 12
    .param p1, "record"    # Lorg/apache/poi/hssf/record/FormulaRecord;

    .line 82
    const-string v0, "~"

    .line 83
    .local v0, "sep":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    .line 85
    .local v1, "tokens":[Lorg/apache/poi/ss/formula/ptg/Ptg;
    array-length v2, v1

    .line 87
    .local v2, "numptgs":I
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    .line 88
    .local v3, "token":Lorg/apache/poi/ss/formula/ptg/Ptg;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    if-eqz v4, :cond_0

    .line 89
    add-int/lit8 v4, v2, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "numArg":Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v4    # "numArg":Ljava/lang/String;
    :cond_0
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .restart local v4    # "numArg":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v5, "buf":Ljava/lang/StringBuffer;
    instance-of v6, v3, Lorg/apache/poi/ss/formula/ptg/ExpPtg;

    if-eqz v6, :cond_1

    return-void

    .line 97
    :cond_1
    move-object v6, v3

    check-cast v6, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/OperationPtg;->toFormulaString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v6

    const-string v7, "ARRAY"

    const-string v8, "REF"

    const/16 v9, 0x40

    const/16 v10, 0x20

    const-string v11, "VALUE"

    if-eqz v6, :cond_4

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_2

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    nop

    .line 111
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const/4 v6, 0x1

    if-le v2, v6, :cond_8

    .line 113
    add-int/lit8 v6, v2, -0x2

    aget-object v3, v1, v6

    .line 114
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getPtgClass()B

    move-result v6

    if-eqz v6, :cond_7

    if-eq v6, v10, :cond_6

    if-eq v6, v9, :cond_5

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 119
    :cond_6
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    goto :goto_2

    .line 116
    :cond_7
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    nop

    .line 123
    :goto_2
    goto :goto_3

    .line 126
    :cond_8
    invoke-virtual {v5, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 212
    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "--help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 218
    :cond_0
    aget-object v1, p0, v0

    const-string v2, "--listFunctions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Whoops!"

    if-eqz v1, :cond_1

    .line 220
    :try_start_0
    new-instance v0, Lorg/apache/poi/hssf/dev/FormulaViewer;

    invoke-direct {v0}, Lorg/apache/poi/hssf/dev/FormulaViewer;-><init>()V

    .line 221
    .local v0, "viewer":Lorg/apache/poi/hssf/dev/FormulaViewer;
    const/4 v1, 0x1

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lorg/apache/poi/hssf/dev/FormulaViewer;->setFile(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->setList(Z)V

    .line 223
    invoke-virtual {v0}, Lorg/apache/poi/hssf/dev/FormulaViewer;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "viewer":Lorg/apache/poi/hssf/dev/FormulaViewer;
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_2

    .line 234
    :cond_1
    :try_start_1
    new-instance v1, Lorg/apache/poi/hssf/dev/FormulaViewer;

    invoke-direct {v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;-><init>()V

    .line 236
    .local v1, "viewer":Lorg/apache/poi/hssf/dev/FormulaViewer;
    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/dev/FormulaViewer;->setFile(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .end local v1    # "viewer":Lorg/apache/poi/hssf/dev/FormulaViewer;
    goto :goto_2

    .line 239
    :catch_1
    move-exception v0

    .line 241
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "FormulaViewer .8 proof that the devil lies in the details (or just in BIFF8 files in general)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "usage: Give me a big fat file name"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    :goto_2
    return-void
.end method


# virtual methods
.method public parseFormulaRecord(Lorg/apache/poi/hssf/record/FormulaRecord;)V
    .locals 4
    .param p1, "record"    # Lorg/apache/poi/hssf/record/FormulaRecord;

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

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getRow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 145
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", col = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getColumn()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getXFIndex()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 148
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", number of ptgs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", options = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/FormulaRecord;->getOptions()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RPN List = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->formulaString(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Formula text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/poi/hssf/dev/FormulaViewer;->composeFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 62
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/poi/hssf/dev/BiffViewer;->getPOIFSInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/RecordFactory;->createRecords(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/apache/poi/hssf/record/Record;>;"
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/Record;

    .line 70
    .local v2, "record":Lorg/apache/poi/hssf/record/Record;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 72
    iget-boolean v3, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->list:Z

    if-eqz v3, :cond_0

    .line 73
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/dev/FormulaViewer;->listFormula(Lorg/apache/poi/hssf/record/FormulaRecord;)V

    goto :goto_1

    .line 75
    :cond_0
    move-object v3, v2

    check-cast v3, Lorg/apache/poi/hssf/record/FormulaRecord;

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/dev/FormulaViewer;->parseFormulaRecord(Lorg/apache/poi/hssf/record/FormulaRecord;)V

    .line 66
    .end local v2    # "record":Lorg/apache/poi/hssf/record/Record;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "k":I
    :cond_2
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->file:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setList(Z)V
    .locals 0
    .param p1, "list"    # Z

    .line 198
    iput-boolean p1, p0, Lorg/apache/poi/hssf/dev/FormulaViewer;->list:Z

    .line 199
    return-void
.end method
