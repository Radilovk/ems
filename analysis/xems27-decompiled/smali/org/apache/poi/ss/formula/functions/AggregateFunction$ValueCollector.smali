.class final Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;
.super Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.source "AggregateFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueCollector"
.end annotation


# static fields
.field private static final instance:Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->instance:Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;-><init>(ZZ)V

    .line 140
    return-void
.end method

.method public static varargs collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D
    .locals 1
    .param p0, "operands"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 142
    sget-object v0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->instance:Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;

    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->getNumberArray([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected evaluate([D)D
    .locals 2
    .param p1, "values"    # [D

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
