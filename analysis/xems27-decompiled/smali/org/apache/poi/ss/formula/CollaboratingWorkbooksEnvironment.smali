.class public final Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
.super Ljava/lang/Object;
.source "CollaboratingWorkbooksEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;


# instance fields
.field private final _evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private final _evaluatorsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;"
        }
    .end annotation
.end field

.field private _unhooked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 6
    .param p2, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;[",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ")V"
        }
    .end annotation

    .line 106
    .local p1, "evaluatorsByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/WorkbookEvaluator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/IdentityHashMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 108
    .local v0, "uniqueEvals":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/apache/poi/ss/formula/WorkbookEvaluator;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "wbName":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 110
    .local v3, "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    invoke-virtual {v0, v3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .end local v2    # "wbName":Ljava/lang/String;
    .end local v3    # "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    goto :goto_0

    .line 111
    .restart local v2    # "wbName":Ljava/lang/String;
    .restart local v3    # "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to register same workbook under names \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' and \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 117
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "wbName":Ljava/lang/String;
    .end local v3    # "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->unhookOldEnvironments([Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 118
    invoke-static {p2, p0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->hookNewEnvironment([Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;)V

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_unhooked:Z

    .line 120
    iput-object p2, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 121
    iput-object p1, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    .line 122
    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)V
    .locals 1
    .param p1, "workbookNames"    # [Ljava/lang/String;
    .param p2, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .param p3, "nItems"    # I

    .line 92
    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->toUniqueMap([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>(Ljava/util/Map;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 93
    return-void
.end method

.method private static hookNewEnvironment([Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;)V
    .locals 5
    .param p0, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .param p1, "env"    # Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .line 127
    array-length v0, p0

    .line 128
    .local v0, "nItems":I
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;

    move-result-object v1

    .line 130
    .local v1, "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 131
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Workbook evaluators must all have the same evaluation listener"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 138
    .local v2, "cache":Lorg/apache/poi/ss/formula/EvaluationCache;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 139
    aget-object v4, p0, v3

    invoke-virtual {v4, p1, v2, v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->attachToEnvironment(Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;Lorg/apache/poi/ss/formula/EvaluationCache;I)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public static setup(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p0, "evaluatorsByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/WorkbookEvaluator;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 73
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 75
    .local v0, "evaluators":[Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>(Ljava/util/Map;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 76
    return-void

    .line 71
    .end local v0    # "evaluators":[Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide at least one collaborating worbook"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setup([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 4
    .param p0, "workbookNames"    # [Ljava/lang/String;
    .param p1, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 59
    array-length v0, p0

    .line 60
    .local v0, "nItems":I
    array-length v1, p1

    if-ne v1, v0, :cond_1

    .line 64
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 67
    new-instance v1, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)V

    .line 68
    return-void

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide at least one collaborating worbook"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of workbook names is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but number of evaluators is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static setupFormulaEvaluator(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaEvaluator;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p0, "evaluators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    .local v0, "evaluatorsByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/WorkbookEvaluator;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "wbName":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 81
    .local v3, "eval":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    instance-of v4, v3, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;

    if-eqz v4, :cond_0

    .line 82
    move-object v4, v3

    check-cast v4, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;

    invoke-interface {v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;->_getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v2    # "wbName":Ljava/lang/String;
    .end local v3    # "eval":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    goto :goto_0

    .line 84
    .restart local v2    # "wbName":Ljava/lang/String;
    .restart local v3    # "eval":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Formula Evaluator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " provides no WorkbookEvaluator access"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "wbName":Ljava/lang/String;
    .end local v3    # "eval":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    :cond_1
    invoke-static {v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setup(Ljava/util/Map;)V

    .line 89
    return-void
.end method

.method private static toUniqueMap([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)Ljava/util/Map;
    .locals 7
    .param p0, "workbookNames"    # [Ljava/lang/String;
    .param p1, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .param p2, "nItems"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/HashMap;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 96
    .local v0, "evaluatorsByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/WorkbookEvaluator;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 97
    aget-object v2, p0, v1

    .line 98
    .local v2, "wbName":Ljava/lang/String;
    aget-object v3, p1, v1

    .line 99
    .local v3, "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v2    # "wbName":Ljava/lang/String;
    .end local v3    # "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .restart local v2    # "wbName":Ljava/lang/String;
    .restart local v3    # "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate workbook name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    .end local v1    # "i":I
    .end local v2    # "wbName":Ljava/lang/String;
    .end local v3    # "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :cond_1
    return-object v0
.end method

.method private unhook()V
    .locals 4

    .line 162
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 167
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->detachFromEnvironment()V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_1
    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_unhooked:Z

    .line 170
    return-void
.end method

.method private unhookOldEnvironments([Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 4
    .param p1, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v0, "oldEnvs":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 149
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEnvironment()Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .line 152
    .local v1, "oldCWEs":[Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 154
    aget-object v3, v1, v2

    invoke-direct {v3}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->unhook()V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 6
    .param p1, "workbookName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
        }
    .end annotation

    .line 173
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_unhooked:Z

    if-nez v0, :cond_4

    .line 176
    iget-object v0, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 177
    .local v0, "result":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    if-nez v0, :cond_3

    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 179
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "Could not resolve external workbook name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    iget-object v2, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    .line 183
    const-string v2, " The following workbook names are valid: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    iget-object v2, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 185
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 186
    .local v3, "count":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .local v4, "count":I
    if-lez v3, :cond_0

    .line 188
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_0
    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v4

    goto :goto_0

    .line 192
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_1
    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 181
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "count":I
    :cond_2
    const-string v2, " Workbook environment has not been set up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :goto_1
    new-instance v2, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    return-object v0

    .line 174
    .end local v0    # "result":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This environment has been unhooked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
