.class public Lorg/apache/poi/ss/formula/functions/EOMonth;
.super Ljava/lang/Object;
.source "EOMonth.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/apache/poi/ss/formula/functions/EOMonth;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/EOMonth;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/EOMonth;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 12
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .prologue
    const/4 v2, 0x2

    .line 51
    array-length v1, p1

    if-eq v1, v2, :cond_0

    .line 52
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 77
    :goto_0
    return-object v1

    .line 56
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v10

    .line 57
    .local v10, "startDateAsNumber":D
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    double-to-int v8, v2

    .line 60
    .local v8, "months":I
    const-wide/16 v2, 0x0

    cmpl-double v1, v10, v2

    if-ltz v1, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v10, v2

    if-gez v1, :cond_1

    .line 61
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 64
    :cond_1
    const/4 v1, 0x0

    invoke-static {v10, v11, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v9

    .line 66
    .local v9, "startDate":Ljava/util/Date;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 67
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 69
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 71
    const/4 v1, 0x2

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 72
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 73
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 75
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v8    # "months":I
    .end local v9    # "startDate":Ljava/util/Date;
    .end local v10    # "startDateAsNumber":D
    :catch_0
    move-exception v7

    .line 77
    .local v7, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v1

    goto :goto_0
.end method
