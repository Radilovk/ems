.class public final Lorg/apache/poi/ss/formula/functions/DGet;
.super Ljava/lang/Object;
.source "DGet.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private result:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 56
    :cond_0
    return-object v0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 1
    .param p1, "eval"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 39
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    .line 41
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 49
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 36
    return-void
.end method
