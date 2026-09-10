.class final Lorg/apache/poi/ss/formula/functions/AggregateFunction$1;
.super Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.source "AggregateFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:Lorg/apache/poi/ss/formula/functions/AggregateFunction;


# direct methods
.method constructor <init>(Lorg/apache/poi/ss/formula/functions/AggregateFunction;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$1;->val$arg:Lorg/apache/poi/ss/formula/functions/AggregateFunction;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluate([D)D
    .locals 2
    .param p1, "values"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/eval/EvaluationException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction$1;->val$arg:Lorg/apache/poi/ss/formula/functions/AggregateFunction;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public isSubtotalCounted()Z
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method
