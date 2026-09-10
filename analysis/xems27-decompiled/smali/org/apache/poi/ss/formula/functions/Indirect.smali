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

    .line 45
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Indirect;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Indirect;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Indirect;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static canTrim(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 227
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 228
    .local v0, "lastIx":I
    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 229
    return v2

    .line 231
    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    return v1

    .line 234
    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    return v1

    .line 237
    :cond_2
    return v2
.end method

.method private static evaluateBooleanArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Z
    .locals 3
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 83
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {v0, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 84
    :cond_1
    :goto_0
    return v2
.end method

.method private static evaluateIndirect(Lorg/apache/poi/ss/formula/OperationEvaluationContext;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 13
    .param p0, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isA1style"    # Z

    .line 94
    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 99
    .local v0, "plingPos":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "workbookName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 102
    .local v3, "sheetName":Ljava/lang/String;
    move-object v4, p1

    .local v4, "refText":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v2    # "workbookName":Ljava/lang/String;
    .end local v3    # "sheetName":Ljava/lang/String;
    .end local v4    # "refText":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/Indirect;->parseWorkbookAndSheetName(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "parts":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 106
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 108
    :cond_1
    aget-object v3, v2, v1

    .line 109
    .local v3, "workbookName":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 110
    .local v4, "sheetName":Ljava/lang/String;
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 116
    .local v2, "workbookName":Ljava/lang/String;
    .local v3, "sheetName":Ljava/lang/String;
    .local v4, "refText":Ljava/lang/String;
    :goto_0
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 117
    .local v5, "colonPos":I
    if-gez v5, :cond_2

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "refStrPart1":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v12, v6

    .local v6, "refStrPart2":Ljava/lang/String;
    goto :goto_1

    .line 121
    .end local v1    # "refStrPart1":Ljava/lang/String;
    .end local v6    # "refStrPart2":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "refStrPart1":Ljava/lang/String;
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    .line 124
    .local v12, "refStrPart2":Ljava/lang/String;
    :goto_1
    move-object v6, p0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    move-object v10, v12

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getDynamicReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    return-object v6
.end method

.method private static parseWorkbookAndSheetName(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 10
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 133
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 134
    .local v0, "lastIx":I
    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 135
    return-object v2

    .line 137
    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Indirect;->canTrim(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    return-object v2

    .line 140
    :cond_1
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 141
    .local v4, "firstChar":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    return-object v2

    .line 144
    :cond_2
    const/16 v5, 0x5d

    const/16 v6, 0x5b

    const/16 v7, 0x27

    const/4 v8, 0x2

    if-ne v4, v7, :cond_a

    .line 147
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v9, v7, :cond_3

    .line 148
    return-object v2

    .line 150
    :cond_3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 151
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 152
    return-object v2

    .line 156
    :cond_4
    if-ne v4, v6, :cond_8

    .line 157
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 158
    .local v5, "rbPos":I
    if-gez v5, :cond_5

    .line 159
    return-object v2

    .line 161
    :cond_5
    invoke-interface {p0, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/Indirect;->unescapeString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "wbName":Ljava/lang/String;
    if-eqz v6, :cond_7

    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/Indirect;->canTrim(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_0

    .line 165
    :cond_6
    add-int/2addr v5, v1

    .line 166
    .local v5, "sheetStartPos":I
    goto :goto_1

    .line 163
    .local v5, "rbPos":I
    :cond_7
    :goto_0
    return-object v2

    .line 167
    .end local v5    # "rbPos":I
    .end local v6    # "wbName":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    .line 168
    .restart local v6    # "wbName":Ljava/lang/String;
    const/4 v5, 0x1

    .line 172
    .local v5, "sheetStartPos":I
    :goto_1
    invoke-interface {p0, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/poi/ss/formula/functions/Indirect;->unescapeString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "sheetName":Ljava/lang/String;
    if-nez v7, :cond_9

    .line 175
    return-object v2

    .line 177
    :cond_9
    new-array v2, v8, [Ljava/lang/String;

    aput-object v6, v2, v3

    aput-object v7, v2, v1

    return-object v2

    .line 180
    .end local v5    # "sheetStartPos":I
    .end local v6    # "wbName":Ljava/lang/String;
    .end local v7    # "sheetName":Ljava/lang/String;
    :cond_a
    if-ne v4, v6, :cond_e

    .line 181
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 182
    .local v5, "rbPos":I
    if-gez v5, :cond_b

    .line 183
    return-object v2

    .line 185
    :cond_b
    invoke-interface {p0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 186
    .local v6, "wbName":Ljava/lang/CharSequence;
    invoke-static {v6}, Lorg/apache/poi/ss/formula/functions/Indirect;->canTrim(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 187
    return-object v2

    .line 189
    :cond_c
    add-int/lit8 v7, v5, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {p0, v7, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 190
    .local v7, "sheetName":Ljava/lang/CharSequence;
    invoke-static {v7}, Lorg/apache/poi/ss/formula/functions/Indirect;->canTrim(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 191
    return-object v2

    .line 193
    :cond_d
    new-array v2, v8, [Ljava/lang/String;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    return-object v2

    .line 196
    .end local v5    # "rbPos":I
    .end local v6    # "wbName":Ljava/lang/CharSequence;
    .end local v7    # "sheetName":Ljava/lang/CharSequence;
    :cond_e
    new-array v5, v8, [Ljava/lang/String;

    aput-object v2, v5, v3

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    return-object v5
.end method

.method private static unescapeString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 204
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 205
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 206
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 207
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 208
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 209
    .local v3, "ch":C
    const/16 v4, 0x27

    if-ne v3, v4, :cond_1

    .line 211
    add-int/lit8 v2, v2, 0x1

    .line 212
    const/4 v5, 0x0

    if-lt v2, v0, :cond_0

    .line 213
    return-object v5

    .line 215
    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 216
    if-eq v3, v4, :cond_1

    .line 217
    return-object v5

    .line 220
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    nop

    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    .line 222
    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 52
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 53
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    aget-object v3, p1, v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    .line 61
    .local v3, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 62
    .local v2, "text":Ljava/lang/String;
    :try_start_1
    array-length v4, p1
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v4, v1, :cond_2

    const/4 v5, 0x2

    .local v0, "isA1style":Z
    if-eq v4, v5, :cond_1

    .line 70
    :try_start_2
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 67
    :cond_1
    aget-object v1, p1, v1

    invoke-static {v1, p2}, Lorg/apache/poi/ss/formula/functions/Indirect;->evaluateBooleanArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Z

    move-result v1
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 68
    goto :goto_0

    .line 72
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 64
    .end local v0    # "isA1style":Z
    .restart local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_2
    const/4 v0, 0x1

    .line 65
    .restart local v0    # "isA1style":Z
    nop

    .line 74
    .end local v3    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    nop

    .line 76
    invoke-static {p2, v2, v0}, Lorg/apache/poi/ss/formula/functions/Indirect;->evaluateIndirect(Lorg/apache/poi/ss/formula/OperationEvaluationContext;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    return-object v1

    .line 72
    .end local v0    # "isA1style":Z
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v2    # "text":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 73
    .restart local v0    # "isA1style":Z
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v2    # "text":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
