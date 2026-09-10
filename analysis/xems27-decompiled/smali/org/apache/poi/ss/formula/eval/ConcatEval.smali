.class public final Lorg/apache/poi/ss/formula/eval/ConcatEval;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "ConcatEval.java"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ConcatEval;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/ConcatEval;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ConcatEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    .line 32
    return-void
.end method

.method private getText(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Object;
    .locals 3
    .param p1, "ve"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 50
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    .line 52
    .local v0, "sve":Lorg/apache/poi/ss/formula/eval/StringValueEval;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 54
    .end local v0    # "sve":Lorg/apache/poi/ss/formula/eval/StringValueEval;
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p1, v0, :cond_1

    .line 55
    const-string v0, ""

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "arg1"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 38
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .local v1, "ve0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    .local v0, "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/eval/ConcatEval;->getText(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/ConcatEval;->getText(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 40
    .end local v0    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .restart local v0    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    goto :goto_0

    .end local v0    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v1    # "ve0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :catch_1
    move-exception v2

    move-object v1, v0

    .local v1, "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    move-object v5, v1

    move-object v0, v5

    .line 41
    .restart local v0    # "ve1":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v1, "ve0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
