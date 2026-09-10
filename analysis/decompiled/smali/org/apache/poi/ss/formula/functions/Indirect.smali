.class public final Lorg/apache/poi/ss/formula/functions/Indirect;
.super Ljava/lang/Object;
.source "Indirect.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Indirect;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Indirect;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Indirect;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static canTrim(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 228
    .local v0, "lastIx":I
    if-gez v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 232
    goto :goto_0

    .line 234
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 235
    goto :goto_0
.end method

.method private static evaluateBooleanArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Z
    .locals 4
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v3

    invoke-static {p0, v2, v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 83
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eq v0, v2, :cond_0

    sget-object v2, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v0, v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private static evaluateIndirect(Lorg/apache/poi/ss/formula/OperationEvaluationContext;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10
    .param p0, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isA1style"    # Z

    .prologue
    const/4 v5, 0x0

    .line 94
    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 99
    .local v8, "plingPos":I
    if-gez v8, :cond_0

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "workbookName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 102
    .local v2, "sheetName":Ljava/lang/String;
    move-object v9, p1

    .line 116
    .local v9, "refText":Ljava/lang/String;
    :goto_0
    const/16 v0, 0x3a

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 117
    .local v6, "colonPos":I
    if-gez v6, :cond_2

    .line 118
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "refStrPart1":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "refStrPart2":Ljava/lang/String;
    :goto_1
    move-object v0, p0

    move v5, p2

    .line 124
    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getDynamicReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .end local v1    # "workbookName":Ljava/lang/String;
    .end local v2    # "sheetName":Ljava/lang/String;
    .end local v3    # "refStrPart1":Ljava/lang/String;
    .end local v4    # "refStrPart2":Ljava/lang/String;
    .end local v6    # "colonPos":I
    .end local v9    # "refText":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Indirect;->parseWorkbookAndSheetName(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "parts":[Ljava/lang/String;
    if-nez v7, :cond_1

    .line 106
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_2

    .line 108
    :cond_1
    aget-object v1, v7, v5

    .line 109
    .restart local v1    # "workbookName":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v2, v7, v0

    .line 110
    .restart local v2    # "sheetName":Ljava/lang/String;
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "refText":Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v7    # "parts":[Ljava/lang/String;
    .restart local v6    # "colonPos":I
    :cond_2
    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 122
    .restart local v3    # "refStrPart1":Ljava/lang/String;
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "refStrPart2":Ljava/lang/String;
    goto :goto_1
.end method

.method private static parseWorkbookAndSheetName(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 12
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v8, 0x27

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 133
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 134
    .local v1, "lastIx":I
    if-gez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v6

    .line 137
    :cond_1
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Indirect;->canTrim(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 140
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 141
    .local v0, "firstChar":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 144
    if-ne v0, v8, :cond_3

    .line 147
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    .line 150
    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 151
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_0

    .line 156
    const/16 v7, 0x5b

    if-ne v0, v7, :cond_2

    .line 157
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 158
    .local v2, "rbPos":I
    if-ltz v2, :cond_0

    .line 161
    invoke-interface {p0, v11, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/formula/functions/Indirect;->unescapeString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "wbName":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-static {v5}, Lorg/apache/poi/ss/formula/functions/Indirect;->canTrim(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 165
    add-int/lit8 v4, v2, 0x1

    .line 172
    .end local v2    # "rbPos":I
    .local v4, "sheetStartPos":I
    :goto_1
    invoke-interface {p0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/formula/functions/Indirect;->unescapeString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "sheetName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 177
    new-array v6, v11, [Ljava/lang/String;

    aput-object v5, v6, v10

    aput-object v3, v6, v9

    goto :goto_0

    .line 167
    .end local v3    # "sheetName":Ljava/lang/String;
    .end local v4    # "sheetStartPos":I
    .end local v5    # "wbName":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .line 168
    .restart local v5    # "wbName":Ljava/lang/String;
    const/4 v4, 0x1

    .restart local v4    # "sheetStartPos":I
    goto :goto_1

    .line 180
    .end local v4    # "sheetStartPos":I
    .end local v5    # "wbName":Ljava/lang/String;
    :cond_3
    const/16 v7, 0x5b

    if-ne v0, v7, :cond_4

    .line 181
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 182
    .restart local v2    # "rbPos":I
    if-ltz v2, :cond_0

    .line 185
    invoke-interface {p0, v9, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 186
    .local v5, "wbName":Ljava/lang/CharSequence;
    invoke-static {v5}, Lorg/apache/poi/ss/formula/functions/Indirect;->canTrim(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 189
    add-int/lit8 v7, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p0, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 190
    .local v3, "sheetName":Ljava/lang/CharSequence;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/Indirect;->canTrim(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 193
    new-array v6, v11, [Ljava/lang/String;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    goto/16 :goto_0

    .line 196
    .end local v2    # "rbPos":I
    .end local v3    # "sheetName":Ljava/lang/CharSequence;
    .end local v5    # "wbName":Ljava/lang/CharSequence;
    :cond_4
    new-array v7, v11, [Ljava/lang/String;

    aput-object v6, v7, v10

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v9

    move-object v6, v7

    goto/16 :goto_0
.end method

.method private static unescapeString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x27

    .line 204
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 205
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 207
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 208
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 209
    .local v0, "ch":C
    if-ne v0, v5, :cond_2

    .line 211
    add-int/lit8 v1, v1, 0x1

    .line 212
    if-lt v1, v2, :cond_1

    .line 223
    .end local v0    # "ch":C
    :cond_0
    :goto_1
    return-object v4

    .line 215
    .restart local v0    # "ch":C
    :cond_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 216
    if-ne v0, v5, :cond_0

    .line 220
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 222
    goto :goto_0

    .line 223
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const/4 v5, 0x1

    .line 52
    array-length v4, p1

    if-ge v4, v5, :cond_0

    .line 53
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 76
    :goto_0
    return-object v4

    .line 59
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 61
    .local v3, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "text":Ljava/lang/String;
    array-length v4, p1

    packed-switch v4, :pswitch_data_0

    .line 70
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :pswitch_0
    const/4 v1, 0x1

    .line 76
    .local v1, "isA1style":Z
    :goto_1
    invoke-static {p2, v2, v1}, Lorg/apache/poi/ss/formula/functions/Indirect;->evaluateIndirect(Lorg/apache/poi/ss/formula/OperationEvaluationContext;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    goto :goto_0

    .line 67
    .end local v1    # "isA1style":Z
    :pswitch_1
    const/4 v4, 0x1

    :try_start_1
    aget-object v4, p1, v4

    invoke-static {v4, p2}, Lorg/apache/poi/ss/formula/functions/Indirect;->evaluateBooleanArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Z
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 68
    .restart local v1    # "isA1style":Z
    goto :goto_1

    .line 72
    .end local v1    # "isA1style":Z
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
