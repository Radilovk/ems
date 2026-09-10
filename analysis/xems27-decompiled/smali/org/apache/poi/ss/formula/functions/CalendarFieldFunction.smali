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

    .line 68
    double-to-int v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 69
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->_dateFieldId:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    return v2

    .line 71
    :cond_1
    return v3

    .line 70
    :cond_2
    const/16 v0, 0x76c

    return v0

    .line 80
    :cond_3
    :goto_0
    const-wide v3, 0x3ed83f91e646f156L    # 5.78125E-6

    add-double/2addr v3, p1

    invoke-static {v3, v4, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendarUTC(DZ)Ljava/util/Calendar;

    move-result-object v0

    .line 81
    .local v0, "c":Ljava/util/Calendar;
    iget v2, p0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->_dateFieldId:I

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 84
    .local v2, "result":I
    iget v3, p0, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->_dateFieldId:I

    if-ne v3, v1, :cond_4

    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 88
    :cond_4
    return v2
.end method


# virtual methods
.method public final evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "arg0"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 54
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 55
    .local v2, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v3

    .line 58
    .local v2, "val":D
    nop

    .line 59
    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    .line 60
    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->getCalField(D)I

    move-result v1

    int-to-double v4, v1

    invoke-direct {v0, v4, v5}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    .line 56
    .end local v2    # "val":D
    :catch_0
    move-exception v2

    .line 57
    .local v0, "val":D
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v3

    return-object v3
.end method
