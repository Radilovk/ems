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

    .line 47
    new-instance v0, Lorg/apache/poi/ss/formula/functions/EOMonth;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/EOMonth;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/EOMonth;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 17
    .param p1, "args"    # [Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p2, "ec"    # Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    .line 51
    move-object/from16 v1, p1

    array-length v0, v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 52
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v3, v1, v0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v3

    .line 57
    .local v3, "startDateAsNumber":D
    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v8

    invoke-static {v6, v7, v8}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    double-to-int v6, v6

    .line 60
    .local v6, "months":I
    const-wide/16 v7, 0x0

    cmpl-double v9, v3, v7

    if-ltz v9, :cond_1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v3, v7

    if-gez v9, :cond_1

    .line 61
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 64
    :cond_1
    invoke-static {v3, v4, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v7

    .line 66
    .local v7, "startDate":Ljava/util/Date;
    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8}, Ljava/util/GregorianCalendar;-><init>()V

    .line 67
    .local v8, "cal":Ljava/util/Calendar;
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 68
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v15, 0x5

    invoke-virtual {v8, v15}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v9, v8

    const/4 v5, 0x5

    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 69
    const/16 v9, 0xe

    invoke-virtual {v8, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 71
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v8, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {v8, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 73
    const/4 v0, -0x1

    invoke-virtual {v8, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 75
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 76
    .end local v3    # "startDateAsNumber":D
    .end local v6    # "months":I
    .end local v7    # "startDate":Ljava/util/Date;
    .end local v8    # "cal":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v2

    return-object v2
.end method
