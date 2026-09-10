.class public final Lorg/apache/poi/ss/formula/functions/Counta;
.super Ljava/lang/Object;
.source "Counta.java"

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

    .line 69
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Counta$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Counta$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Counta;->defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 83
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Counta$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Counta$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lorg/apache/poi/ss/formula/functions/Counta;->defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/Counta;->_predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 42
    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V
    .locals 0
    .param p1, "criteriaPredicate"    # Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/Counta;->_predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    .line 46
    return-void
.end method

.method static synthetic access$000()Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/poi/ss/formula/functions/Counta;->defaultPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    return-object v0
.end method

.method public static subtotalInstance()Lorg/apache/poi/ss/formula/functions/Counta;
    .locals 2

    .line 97
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Counta;

    sget-object v1, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalPredicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/Counta;-><init>(Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "srcCellRow"    # I
    .param p3, "srcCellCol"    # I

    .line 49
    array-length v0, p1

    .line 50
    .local v0, "nArgs":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 52
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 55
    :cond_0
    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 57
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 60
    :cond_1
    const/4 v1, 0x0

    .line 62
    .local v1, "temp":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 63
    aget-object v3, p1, v2

    iget-object v4, p0, Lorg/apache/poi/ss/formula/functions/Counta;->_predicate:Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    invoke-static {v3, v4}, Lorg/apache/poi/ss/formula/functions/CountUtils;->countArg(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)I

    move-result v3

    add-int/2addr v1, v3

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double v3, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2
.end method
