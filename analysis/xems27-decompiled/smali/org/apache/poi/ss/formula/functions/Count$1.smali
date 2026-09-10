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

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 2
    .param p1, "valueEval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 75
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    return v1

    .line 79
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne p1, v0, :cond_1

    .line 81
    return v1

    .line 85
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
