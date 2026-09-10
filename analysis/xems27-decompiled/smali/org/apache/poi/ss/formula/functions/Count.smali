.class public final Lorg/apache/poi/ss/formula/functions/Count;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field private static final defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

.field private static final subtotalPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# instance fields
.field private final _predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Count$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Count$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Count;->defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 89
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Count$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Count$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Count;->subtotalPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lorg/apache/poi/ss/formula/functions/Count;->defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Count;->_predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 44
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V
    .locals 0
    .param p1, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Count;->_predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 48
    return-void
.end method

.method static synthetic access$000()Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/poi/ss/formula/functions/Count;->defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-object v0
.end method

.method public static subtotalInstance()Lorg/apache/poi/ss/formula/functions/Count;
    .locals 2

    .line 112
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Count;

    sget-object v1, Lorg/apache/poi/ss/formula/functions/Count;->subtotalPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/Count;-><init>(Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .line 51
    array-length v0, p1

    .line 52
    .local v0, "nArgs":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 54
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 57
    :cond_0
    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 59
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 62
    :cond_1
    const/4 v1, 0x0

    .line 64
    .local v1, "temp":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 65
    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/apache/poi/ss/formula/functions/Count;->_predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-static {v3, v4}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v3

    add-int/2addr v1, v3

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v3, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2
.end method
