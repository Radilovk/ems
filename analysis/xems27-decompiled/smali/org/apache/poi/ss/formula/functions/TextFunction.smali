.class public abstract Lorg/apache/poi/ss/formula/functions/TextFunction;
.super Ljava/lang/Object;
.source "TextFunction.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;,
        Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;,
        Lorg/apache/poi/ss/formula/functions/TextFunction$SingleArgTextFunc;
    }
.end annotation


# static fields
.field public static final CHAR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final CLEAN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final CONCATENATE:Lorg/apache/poi/ss/formula/functions/Function;

.field protected static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final EXACT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final FIND:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LEFT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LEN:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final LOWER:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MID:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PROPER:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final RIGHT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SEARCH:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TEXT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final TRIM:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final UPPER:Lorg/apache/poi/ss/formula/functions/Function;

.field protected static final formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-direct {v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->formatter:Lorg/apache/poi/ss/usermodel/DataFormatter;

    .line 86
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->CHAR:Lorg/apache/poi/ss/formula/functions/Function;

    .line 102
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->LEN:Lorg/apache/poi/ss/formula/functions/Function;

    .line 107
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->LOWER:Lorg/apache/poi/ss/formula/functions/Function;

    .line 112
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->UPPER:Lorg/apache/poi/ss/formula/functions/Function;

    .line 123
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$5;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$5;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->PROPER:Lorg/apache/poi/ss/formula/functions/Function;

    .line 149
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$6;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$6;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->TRIM:Lorg/apache/poi/ss/formula/functions/Function;

    .line 161
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$7;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$7;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->CLEAN:Lorg/apache/poi/ss/formula/functions/Function;

    .line 200
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$8;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$8;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->MID:Lorg/apache/poi/ss/formula/functions/Function;

    .line 268
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->LEFT:Lorg/apache/poi/ss/formula/functions/Function;

    .line 269
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/TextFunction$LeftRight;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->RIGHT:Lorg/apache/poi/ss/formula/functions/Function;

    .line 271
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$9;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$9;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->CONCATENATE:Lorg/apache/poi/ss/formula/functions/Function;

    .line 286
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$10;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$10;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->EXACT:Lorg/apache/poi/ss/formula/functions/Function;

    .line 312
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$11;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/TextFunction$11;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->TEXT:Lorg/apache/poi/ss/formula/functions/Function;

    .line 391
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->FIND:Lorg/apache/poi/ss/formula/functions/Function;

    .line 400
    new-instance v0, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;-><init>(Z)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/TextFunction;->SEARCH:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    return-void
.end method

.method protected static final evaluateDoubleArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 3
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 50
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 51
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    return-wide v1
.end method

.method protected static final evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 2
    .param p0, "arg"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcCellRow"    # I
    .param p2, "srcCellCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 45
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 46
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v1

    return v1
.end method

.method protected static final evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;
    .locals 2
    .param p0, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p1, "srcRow"    # I
    .param p2, "srcCol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    .line 42
    .local v0, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .line 56
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateFunc([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    return-object v1
.end method

.method protected abstract evaluateFunc([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation
.end method
