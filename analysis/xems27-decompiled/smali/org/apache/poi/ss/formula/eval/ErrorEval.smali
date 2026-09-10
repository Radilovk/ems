.class public final Lorg/apache/poi/ss/formula/eval/ErrorEval;
.super Ljava/lang/Object;
.source "ErrorEval.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/ValueEval;


# static fields
.field public static final CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field public static final VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

.field private static final evals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/usermodel/FormulaError;",
            "Lorg/apache/poi/ss/formula/eval/ErrorEval;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _error:Lorg/apache/poi/ss/usermodel/FormulaError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->evals:Ljava/util/Map;

    .line 32
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NULL_INTERSECTION:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 36
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 38
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 40
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NAME_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 42
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 44
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 47
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->FUNCTION_NOT_IMPLEMENTED:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 50
    new-instance v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->CIRCULAR_REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;-><init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->CIRCULAR_REF_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/ss/usermodel/FormulaError;)V
    .locals 1
    .param p1, "error"    # Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    .line 82
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->evals:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .locals 2
    .param p0, "errorCode"    # I

    .line 72
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->isValidCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~non~std~err("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;
    .locals 5
    .param p0, "errorCode"    # I

    .line 57
    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(I)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object v0

    .line 58
    .local v0, "error":Lorg/apache/poi/ss/usermodel/FormulaError;
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->evals:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 59
    .local v1, "eval":Lorg/apache/poi/ss/formula/eval/ErrorEval;
    if-eqz v1, :cond_0

    .line 60
    return-object v1

    .line 62
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled error type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getLongCode()I

    move-result v0

    return v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->_error:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
