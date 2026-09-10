.class public final Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "CalendarFieldFunction.java"


# static fields
.field public static final DAY:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final HOUR:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MINUTE:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MONTH:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SECOND:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final YEAR:Lorg/apache/poi/ss/formula/functions/Function;


# instance fields
.field private final _dateFieldId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->YEAR:Lorg/apache/poi/ss/formula/functions/Function;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->MONTH:Lorg/apache/poi/ss/formula/functions/Function;

    .line 40
    new-instance v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->DAY:Lorg/apache/poi/ss/formula/functions/Function;

    .line 41
    new-instance v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->HOUR:Lorg/apache/poi/ss/formula/functions/Function;

    .line 42
    new-instance v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->MINUTE:Lorg/apache/poi/ss/formula/functions/Function;

    .line 43
    new-instance v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;-><init>(I)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->SECOND:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "dateFieldId"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    .line 48
    iput p1, p0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->_dateFieldId:I

    .line 49
    return-void
.end method

.method private getCalField(D)I
    .locals 5
    .param p1, "serialDate"    # D

    .prologue
    const/4 v1, 0x0

    .line 68
    double-to-int v2, p1

    if-nez v2, :cond_0

    .line 69
    iget v2, p0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->_dateFieldId:I

    packed-switch v2, :pswitch_data_0

    .line 80
    :cond_0
    :pswitch_0
    const-wide v2, 0x3ed83f91e646f156L    # 5.78125E-6

    add-double/2addr v2, p1

    invoke-static {v2, v3, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendarUTC(DZ)Ljava/util/Calendar;

    move-result-object v0

    .line 81
    .local v0, "c":Ljava/util/Calendar;
    iget v2, p0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->_dateFieldId:I

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 84
    .local v1, "result":I
    iget v2, p0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->_dateFieldId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 88
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "result":I
    :cond_1
    :goto_0
    :pswitch_1
    return v1

    .line 70
    :pswitch_2
    const/16 v1, 0x76c

    goto :goto_0

    .line 71
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 54
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 55
    .local v1, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 59
    .local v2, "val":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_0

    .line 60
    sget-object v4, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 62
    .end local v1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .end local v2    # "val":D
    :goto_0
    return-object v4

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v4

    goto :goto_0

    .line 62
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    .restart local v2    # "val":D
    :cond_0
    new-instance v4, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->getCalField(D)I

    move-result v5

    int-to-double v6, v5

    invoke-direct {v4, v6, v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_0
.end method
