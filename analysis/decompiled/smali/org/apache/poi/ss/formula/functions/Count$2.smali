.class final Lorg/apache/poi/ss/formula/functions/Count$2;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchAreaPredicate;


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
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/apache/poi/ss/formula/TwoDEval;II)Z
    .locals 1
    .param p1, "areEval"    # Lorg/apache/poi/ss/formula/TwoDEval;
    .param p2, "rowIndex"    # I
    .param p3, "columnIndex"    # I

    .prologue
    .line 98
    invoke-interface {p1, p2, p3}, Lorg/apache/poi/ss/formula/TwoDEval;->isSubTotal(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 1
    .param p1, "valueEval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 91
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/Count;->access$000()Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v0

    return v0
.end method
