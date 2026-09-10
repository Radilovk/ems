.class public abstract Lorg/apache/poi/ss/formula/functions/LogicalFunction;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "LogicalFunction.java"


# static fields
.field public static final ISBLANK:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ISERR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ISERROR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ISLOGICAL:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ISNA:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ISNONTEXT:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ISNUMBER:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ISREF:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final ISTEXT:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISLOGICAL:Lorg/apache/poi/ss/formula/functions/Function;

    .line 63
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISNONTEXT:Lorg/apache/poi/ss/formula/functions/Function;

    .line 68
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISNUMBER:Lorg/apache/poi/ss/formula/functions/Function;

    .line 73
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISTEXT:Lorg/apache/poi/ss/formula/functions/Function;

    .line 79
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction$5;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction$5;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISBLANK:Lorg/apache/poi/ss/formula/functions/Function;

    .line 86
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction$6;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction$6;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISERROR:Lorg/apache/poi/ss/formula/functions/Function;

    .line 104
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction$7;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction$7;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISERR:Lorg/apache/poi/ss/formula/functions/Function;

    .line 124
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction$8;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction$8;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISNA:Lorg/apache/poi/ss/formula/functions/Function;

    .line 131
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction$9;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/LogicalFunction$9;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISREF:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 40
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50
    .local v1, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->evaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object v2

    return-object v2

    .line 41
    .end local v1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    .restart local v1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0
.end method

.method protected abstract evaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
.end method
