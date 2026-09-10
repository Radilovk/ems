.class public final Lorg/apache/poi/ss/formula/functions/Countblank;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "Countblank.java"


# static fields
.field private static final predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Countblank$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Countblank$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Countblank;->predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 43
    instance-of v2, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v2, :cond_0

    .line 44
    check-cast p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countblank;->predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-static {p3, v2}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInRef(Lorg/apache/poi/ss/formula/eval/RefEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v2

    int-to-double v0, v2

    .line 50
    .local v0, "result":D
    :goto_0
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    .line 45
    .end local v0    # "result":D
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    instance-of v2, p3, Lorg/apache/poi/ss/formula/ThreeDEval;

    if-eqz v2, :cond_1

    .line 46
    check-cast p3, Lorg/apache/poi/ss/formula/ThreeDEval;

    .end local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countblank;->predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-static {p3, v2}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countMatchingCellsInArea(Lorg/apache/poi/ss/formula/ThreeDEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v2

    int-to-double v0, v2

    .restart local v0    # "result":D
    goto :goto_0

    .line 48
    .end local v0    # "result":D
    .restart local p3    # "arg0":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad range arg type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
