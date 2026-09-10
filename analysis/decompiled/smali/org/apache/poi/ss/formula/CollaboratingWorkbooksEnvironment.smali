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
            "Ljava/util/Map",
            "<",
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

    .prologue
    .line 47
    new-instance v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->EMPTY:Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
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
    .locals 7
    .param p2, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;[",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "evaluatorsByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/WorkbookEvaluator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v2, Ljava/util/IdentityHashMap;

    array-length v5, p2

    invoke-direct {v2, v5}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 108
    .local v2, "uniqueEvals":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/apache/poi/ss/formula/WorkbookEvaluator;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    .local v4, "wbName":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 110
    .local v3, "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to register same workbook under names \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "msg":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    .end local v3    # "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .end local v4    # "wbName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->unhookOldEnvironments([Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 118
    invoke-static {p2, p0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->hookNewEnvironment([Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;)V

    .line 119
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_unhooked:Z

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

    .prologue
    .line 92
    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->toUniqueMap([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>(Ljava/util/Map;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 93
    return-void
.end method

.method private static hookNewEnvironment([Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;)V
    .locals 6
    .param p0, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .param p1, "env"    # Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .prologue
    .line 127
    array-length v3, p0

    .line 128
    .local v3, "nItems":I
    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;

    move-result-object v1

    .line 130
    .local v1, "evalListener":Lorg/apache/poi/ss/formula/IEvaluationListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 131
    aget-object v4, p0, v2

    invoke-virtual {v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEvaluationListener()Lorg/apache/poi/ss/formula/IEvaluationListener;

    move-result-object v4

    if-eq v1, v4, :cond_0

    .line 133
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Workbook evaluators must all have the same evaluation listener"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 130
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/EvaluationCache;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationCache;-><init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    .line 138
    .local v0, "cache":Lorg/apache/poi/ss/formula/EvaluationCache;
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 139
    aget-object v4, p0, v2

    invoke-virtual {v4, p1, v0, v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->attachToEnvironment(Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;Lorg/apache/poi/ss/formula/EvaluationCache;I)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_2
    return-void
.end method

.method public static setup(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "evaluatorsByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/WorkbookEvaluator;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide at least one collaborating worbook"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 75
    .local v0, "evaluators":[Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    new-instance v1, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-direct {v1, p0, v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>(Ljava/util/Map;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    .line 76
    return-void
.end method

.method public static setup([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 4
    .param p0, "workbookNames"    # [Ljava/lang/String;
    .param p1, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .prologue
    .line 59
    array-length v0, p0

    .line 60
    .local v0, "nItems":I
    array-length v1, p1

    if-eq v1, v0, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of workbook names is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but number of evaluators is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide at least one collaborating worbook"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_1
    new-instance v1, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;-><init>([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;I)V

    .line 68
    return-void
.end method

.method public static setupFormulaEvaluator(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaEvaluator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "evaluators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    .local v1, "evaluatorsByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/WorkbookEvaluator;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, "wbName":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    .line 81
    .local v0, "eval":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    instance-of v4, v0, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;

    if-eqz v4, :cond_0

    .line 82
    check-cast v0, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;

    .end local v0    # "eval":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;->_getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    .restart local v0    # "eval":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Formula Evaluator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provides no WorkbookEvaluator access"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    .end local v0    # "eval":Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
    .end local v3    # "wbName":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setup(Ljava/util/Map;)V

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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/WorkbookEvaluator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    mul-int/lit8 v4, p2, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 96
    .local v0, "evaluatorsByName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/WorkbookEvaluator;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 97
    aget-object v3, p0, v1

    .line 98
    .local v3, "wbName":Ljava/lang/String;
    aget-object v2, p1, v1

    .line 99
    .local v2, "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate workbook name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "wbEval":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .end local v3    # "wbName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private unhook()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 162
    iget-object v1, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    array-length v1, v1

    if-ge v1, v2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 167
    iget-object v1, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->detachFromEnvironment()V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_1
    iput-boolean v2, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_unhooked:Z

    goto :goto_0
.end method

.method private unhookOldEnvironments([Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 4
    .param p1, "evaluators"    # [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .prologue
    .line 147
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v2, "oldEnvs":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 149
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getEnvironment()Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v1, v3, [Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;

    .line 152
    .local v1, "oldCWEs":[Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 153
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 154
    aget-object v3, v1, v0

    invoke-direct {v3}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->unhook()V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_1
    return-void
.end method


# virtual methods
.method public getWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 7
    .param p1, "workbookName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    iget-boolean v5, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_unhooked:Z

    if-eqz v5, :cond_0

    .line 174
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "This environment has been unhooked"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 176
    :cond_0
    iget-object v5, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 177
    .local v3, "result":Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    if-nez v3, :cond_4

    .line 178
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 179
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v5, "Could not resolve external workbook name \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    iget-object v5, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluators:[Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    array-length v5, v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 181
    const-string v5, " Workbook environment has not been set up."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :goto_0
    new-instance v5, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    :cond_1
    const-string v5, " The following workbook names are valid: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    iget-object v5, p0, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->_evaluatorsByName:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 185
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 186
    .local v0, "count":I
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    if-lez v0, :cond_2

    .line 188
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_2
    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 192
    :cond_3
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 196
    .end local v0    # "count":I
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    return-object v3
.end method
