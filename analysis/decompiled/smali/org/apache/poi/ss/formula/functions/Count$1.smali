.class final Lorg/apache/poi/ss/formula/functions/Count$1;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/Count;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 2
    .param p1, "valueEval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    const/4 v0, 0x1

    .line 75
    instance-of v1, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    sget-object v1, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eq p1, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method
