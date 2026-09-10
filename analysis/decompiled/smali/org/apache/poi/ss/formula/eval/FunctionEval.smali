.class public final Lorg/apache/poi/ss/formula/eval/FunctionEval;
.super Ljava/lang/Object;
.source "FunctionEval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/eval/FunctionEval$FunctionID;
    }
.end annotation


# static fields
.field protected static final functions:[Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->produceFunctions()[Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getBasicFunction(I)Lorg/apache/poi/ss/formula/functions/Function;
    .locals 4
    .param p0, "functionIndex"    # I

    .prologue
    .line 266
    sparse-switch p0, :sswitch_data_0

    .line 272
    sget-object v1, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    aget-object v0, v1, p0

    .line 273
    .local v0, "result":Lorg/apache/poi/ss/formula/functions/Function;
    if-nez v0, :cond_0

    .line 274
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FuncIx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    .end local v0    # "result":Lorg/apache/poi/ss/formula/functions/Function;
    :sswitch_0
    const/4 v0, 0x0

    .line 276
    :cond_0
    return-object v0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x94 -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 334
    .local v2, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 335
    sget-object v4, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    aget-object v0, v4, v1

    .line 336
    .local v0, "func":Lorg/apache/poi/ss/formula/functions/Function;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;

    if-eqz v4, :cond_0

    .line 337
    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v3

    .line 338
    .local v3, "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v3    # "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "func":Lorg/apache/poi/ss/formula/functions/Function;
    :cond_1
    const-string v4, "INDIRECT"

    invoke-interface {v2, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 342
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    return-object v4
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 315
    .local v2, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 316
    sget-object v4, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    aget-object v0, v4, v1

    .line 317
    .local v0, "func":Lorg/apache/poi/ss/formula/functions/Function;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v3

    .line 318
    .local v3, "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;

    if-nez v4, :cond_0

    .line 319
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "func":Lorg/apache/poi/ss/formula/functions/Function;
    .end local v3    # "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_1
    const-string v4, "INDIRECT"

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    return-object v4
.end method

.method private static produceFunctions()[Lorg/apache/poi/ss/formula/functions/Function;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x52

    .line 58
    const/16 v4, 0x170

    new-array v3, v4, [Lorg/apache/poi/ss/formula/functions/Function;

    .line 60
    .local v3, "retval":[Lorg/apache/poi/ss/formula/functions/Function;
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Count;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Count;-><init>()V

    aput-object v5, v3, v4

    .line 61
    const/4 v4, 0x1

    new-instance v5, Lorg/apache/poi/ss/formula/functions/IfFunc;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/IfFunc;-><init>()V

    aput-object v5, v3, v4

    .line 62
    const/4 v4, 0x2

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISNA:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 63
    const/4 v4, 0x3

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISERROR:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 64
    const/4 v4, 0x4

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUM:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 65
    const/4 v4, 0x5

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 66
    const/4 v4, 0x6

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MIN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 67
    const/4 v4, 0x7

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MAX:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 68
    const/16 v4, 0x8

    new-instance v5, Lorg/apache/poi/ss/formula/functions/RowFunc;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/RowFunc;-><init>()V

    aput-object v5, v3, v4

    .line 69
    const/16 v4, 0x9

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Column;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Column;-><init>()V

    aput-object v5, v3, v4

    .line 70
    const/16 v4, 0xa

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Na;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Na;-><init>()V

    aput-object v5, v3, v4

    .line 71
    const/16 v4, 0xb

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Npv;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Npv;-><init>()V

    aput-object v5, v3, v4

    .line 72
    const/16 v4, 0xc

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 73
    const/16 v4, 0xd

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->DOLLAR:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 74
    const/16 v4, 0xe

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Fixed;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Fixed;-><init>()V

    aput-object v5, v3, v4

    .line 75
    const/16 v4, 0xf

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SIN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 76
    const/16 v4, 0x10

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->COS:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 77
    const/16 v4, 0x11

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TAN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 78
    const/16 v4, 0x12

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ATAN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 79
    const/16 v4, 0x13

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->PI:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 80
    const/16 v4, 0x14

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SQRT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 81
    const/16 v4, 0x15

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->EXP:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 82
    const/16 v4, 0x16

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 83
    const/16 v4, 0x17

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG10:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 84
    const/16 v4, 0x18

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ABS:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 85
    const/16 v4, 0x19

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->INT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 86
    const/16 v4, 0x1a

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SIGN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 87
    const/16 v4, 0x1b

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ROUND:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 88
    const/16 v4, 0x1c

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Lookup;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Lookup;-><init>()V

    aput-object v5, v3, v4

    .line 89
    const/16 v4, 0x1d

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Index;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Index;-><init>()V

    aput-object v5, v3, v4

    .line 90
    const/16 v4, 0x1e

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Rept;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Rept;-><init>()V

    aput-object v5, v3, v4

    .line 91
    const/16 v4, 0x1f

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->MID:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 92
    const/16 v4, 0x20

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->LEN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 93
    const/16 v4, 0x21

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Value;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Value;-><init>()V

    aput-object v5, v3, v4

    .line 94
    const/16 v4, 0x22

    sget-object v5, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->TRUE:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 95
    const/16 v4, 0x23

    sget-object v5, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->FALSE:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 96
    const/16 v4, 0x24

    sget-object v5, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->AND:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 97
    const/16 v4, 0x25

    sget-object v5, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->OR:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 98
    const/16 v4, 0x26

    sget-object v5, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->NOT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 99
    const/16 v4, 0x27

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->MOD:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 101
    const/16 v4, 0x2b

    new-instance v5, Lorg/apache/poi/ss/formula/functions/DStarRunner;

    new-instance v6, Lorg/apache/poi/ss/formula/functions/DMin;

    invoke-direct {v6}, Lorg/apache/poi/ss/formula/functions/DMin;-><init>()V

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner;-><init>(Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;)V

    aput-object v5, v3, v4

    .line 103
    const/16 v4, 0x2e

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VAR:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 104
    const/16 v4, 0x30

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->TEXT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 106
    const/16 v4, 0x38

    sget-object v5, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->PV:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 107
    const/16 v4, 0x39

    sget-object v5, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->FV:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 108
    const/16 v4, 0x3a

    sget-object v5, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->NPER:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 109
    const/16 v4, 0x3b

    sget-object v5, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->PMT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 110
    const/16 v4, 0x3c

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Rate;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Rate;-><init>()V

    aput-object v5, v3, v4

    .line 111
    const/16 v4, 0x3d

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Mirr;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Mirr;-><init>()V

    aput-object v5, v3, v4

    .line 112
    const/16 v4, 0x3e

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Irr;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Irr;-><init>()V

    aput-object v5, v3, v4

    .line 113
    const/16 v4, 0x3f

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->RAND:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 114
    const/16 v4, 0x40

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Match;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Match;-><init>()V

    aput-object v5, v3, v4

    .line 115
    const/16 v4, 0x41

    sget-object v5, Lorg/apache/poi/ss/formula/functions/DateFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 116
    const/16 v4, 0x42

    new-instance v5, Lorg/apache/poi/ss/formula/functions/TimeFunc;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/TimeFunc;-><init>()V

    aput-object v5, v3, v4

    .line 117
    const/16 v4, 0x43

    sget-object v5, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->DAY:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 118
    const/16 v4, 0x44

    sget-object v5, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->MONTH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 119
    const/16 v4, 0x45

    sget-object v5, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->YEAR:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 120
    const/16 v4, 0x46

    sget-object v5, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 121
    const/16 v4, 0x47

    sget-object v5, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->HOUR:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 122
    const/16 v4, 0x48

    sget-object v5, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->MINUTE:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 123
    const/16 v4, 0x49

    sget-object v5, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->SECOND:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 124
    const/16 v4, 0x4a

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Now;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Now;-><init>()V

    aput-object v5, v3, v4

    .line 126
    const/16 v4, 0x4c

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Rows;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Rows;-><init>()V

    aput-object v5, v3, v4

    .line 127
    const/16 v4, 0x4d

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Columns;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Columns;-><init>()V

    aput-object v5, v3, v4

    .line 128
    sget-object v4, Lorg/apache/poi/ss/formula/functions/TextFunction;->SEARCH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v4, v3, v7

    .line 129
    const/16 v4, 0x4e

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Offset;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Offset;-><init>()V

    aput-object v5, v3, v4

    .line 130
    sget-object v4, Lorg/apache/poi/ss/formula/functions/TextFunction;->SEARCH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v4, v3, v7

    .line 132
    const/16 v4, 0x61

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ATAN2:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 133
    const/16 v4, 0x62

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ASIN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 134
    const/16 v4, 0x63

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ACOS:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 135
    const/16 v4, 0x64

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Choose;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Choose;-><init>()V

    aput-object v5, v3, v4

    .line 136
    const/16 v4, 0x65

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Hlookup;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Hlookup;-><init>()V

    aput-object v5, v3, v4

    .line 137
    const/16 v4, 0x66

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Vlookup;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Vlookup;-><init>()V

    aput-object v5, v3, v4

    .line 139
    const/16 v4, 0x69

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISREF:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 141
    const/16 v4, 0x6d

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 143
    const/16 v4, 0x6f

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->CHAR:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 144
    const/16 v4, 0x70

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->LOWER:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 145
    const/16 v4, 0x71

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->UPPER:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 146
    const/16 v4, 0x72

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->PROPER:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 147
    const/16 v4, 0x73

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->LEFT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 148
    const/16 v4, 0x74

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->RIGHT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 149
    const/16 v4, 0x75

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->EXACT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 150
    const/16 v4, 0x76

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->TRIM:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 151
    const/16 v4, 0x77

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Replace;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Replace;-><init>()V

    aput-object v5, v3, v4

    .line 152
    const/16 v4, 0x78

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Substitute;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Substitute;-><init>()V

    aput-object v5, v3, v4

    .line 153
    const/16 v4, 0x79

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Code;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Code;-><init>()V

    aput-object v5, v3, v4

    .line 155
    const/16 v4, 0x7c

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->FIND:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 157
    const/16 v4, 0x7e

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISERR:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 158
    const/16 v4, 0x7f

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISTEXT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 159
    const/16 v4, 0x80

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISNUMBER:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 160
    const/16 v4, 0x81

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISBLANK:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 161
    const/16 v4, 0x82

    new-instance v5, Lorg/apache/poi/ss/formula/functions/T;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/T;-><init>()V

    aput-object v5, v3, v4

    .line 163
    const/16 v4, 0x94

    aput-object v8, v3, v4

    .line 165
    const/16 v4, 0xa2

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->CLEAN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 166
    const/16 v4, 0xa7

    new-instance v5, Lorg/apache/poi/ss/formula/functions/IPMT;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/IPMT;-><init>()V

    aput-object v5, v3, v4

    .line 167
    const/16 v4, 0xa8

    new-instance v5, Lorg/apache/poi/ss/formula/functions/PPMT;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/PPMT;-><init>()V

    aput-object v5, v3, v4

    .line 168
    const/16 v4, 0xa9

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Counta;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Counta;-><init>()V

    aput-object v5, v3, v4

    .line 170
    const/16 v4, 0xb7

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 171
    const/16 v4, 0xb8

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->FACT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 173
    const/16 v4, 0xbe

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISNONTEXT:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 174
    const/16 v4, 0xc2

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VARP:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 175
    const/16 v4, 0xc5

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TRUNC:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 176
    const/16 v4, 0xc6

    sget-object v5, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISLOGICAL:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 178
    const/16 v4, 0xd4

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ROUNDUP:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 179
    const/16 v4, 0xd5

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ROUNDDOWN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 180
    const/16 v4, 0xd8

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Rank;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Rank;-><init>()V

    aput-object v5, v3, v4

    .line 181
    const/16 v4, 0xdb

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Address;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Address;-><init>()V

    aput-object v5, v3, v4

    .line 182
    const/16 v4, 0xdc

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Days360;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Days360;-><init>()V

    aput-object v5, v3, v4

    .line 183
    const/16 v4, 0xdd

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Today;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Today;-><init>()V

    aput-object v5, v3, v4

    .line 185
    const/16 v4, 0xe3

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MEDIAN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 186
    const/16 v4, 0xe4

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Sumproduct;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Sumproduct;-><init>()V

    aput-object v5, v3, v4

    .line 187
    const/16 v4, 0xe5

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SINH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 188
    const/16 v4, 0xe6

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->COSH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 189
    const/16 v4, 0xe7

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TANH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 190
    const/16 v4, 0xe8

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ASINH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 191
    const/16 v4, 0xe9

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ACOSH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 192
    const/16 v4, 0xea

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ATANH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 194
    const/16 v4, 0xeb

    new-instance v5, Lorg/apache/poi/ss/formula/functions/DStarRunner;

    new-instance v6, Lorg/apache/poi/ss/formula/functions/DGet;

    invoke-direct {v6}, Lorg/apache/poi/ss/formula/functions/DGet;-><init>()V

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/functions/DStarRunner;-><init>(Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;)V

    aput-object v5, v3, v4

    .line 196
    const/16 v4, 0xff

    aput-object v8, v3, v4

    .line 198
    const/16 v4, 0x105

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Errortype;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Errortype;-><init>()V

    aput-object v5, v3, v4

    .line 200
    const/16 v4, 0x10d

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVEDEV:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 202
    const/16 v4, 0x114

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->COMBIN:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 204
    const/16 v4, 0x117

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Even;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Even;-><init>()V

    aput-object v5, v3, v4

    .line 206
    const/16 v4, 0x11d

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->FLOOR:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 208
    const/16 v4, 0x120

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->CEILING:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 210
    const/16 v4, 0x12a

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Odd;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Odd;-><init>()V

    aput-object v5, v3, v4

    .line 212
    const/16 v4, 0x12c

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->POISSON:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 214
    const/16 v4, 0x12f

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Sumxmy2;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Sumxmy2;-><init>()V

    aput-object v5, v3, v4

    .line 215
    const/16 v4, 0x130

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Sumx2my2;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Sumx2my2;-><init>()V

    aput-object v5, v3, v4

    .line 216
    const/16 v4, 0x131

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Sumx2py2;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Sumx2py2;-><init>()V

    aput-object v5, v3, v4

    .line 218
    const/16 v4, 0x137

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Intercept;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Intercept;-><init>()V

    aput-object v5, v3, v4

    .line 219
    const/16 v4, 0x13b

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Slope;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Slope;-><init>()V

    aput-object v5, v3, v4

    .line 221
    const/16 v4, 0x13e

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->DEVSQ:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 223
    const/16 v4, 0x141

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUMSQ:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 225
    const/16 v4, 0x145

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->LARGE:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 226
    const/16 v4, 0x146

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SMALL:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 227
    const/16 v4, 0x148

    sget-object v5, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PERCENTILE:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 229
    const/16 v4, 0x14a

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Mode;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Mode;-><init>()V

    aput-object v5, v3, v4

    .line 231
    const/16 v4, 0x150

    sget-object v5, Lorg/apache/poi/ss/formula/functions/TextFunction;->CONCATENATE:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 232
    const/16 v4, 0x151

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->POWER:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 234
    const/16 v4, 0x156

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->RADIANS:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 235
    const/16 v4, 0x157

    sget-object v5, Lorg/apache/poi/ss/formula/functions/NumericFunction;->DEGREES:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 237
    const/16 v4, 0x158

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Subtotal;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Subtotal;-><init>()V

    aput-object v5, v3, v4

    .line 238
    const/16 v4, 0x159

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Sumif;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Sumif;-><init>()V

    aput-object v5, v3, v4

    .line 239
    const/16 v4, 0x15a

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countif;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Countif;-><init>()V

    aput-object v5, v3, v4

    .line 240
    const/16 v4, 0x15b

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Countblank;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Countblank;-><init>()V

    aput-object v5, v3, v4

    .line 242
    const/16 v4, 0x162

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Roman;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Roman;-><init>()V

    aput-object v5, v3, v4

    .line 244
    const/16 v4, 0x167

    new-instance v5, Lorg/apache/poi/ss/formula/functions/Hyperlink;

    invoke-direct {v5}, Lorg/apache/poi/ss/formula/functions/Hyperlink;-><init>()V

    aput-object v5, v3, v4

    .line 246
    const/16 v4, 0x16a

    sget-object v5, Lorg/apache/poi/ss/formula/functions/MinaMaxa;->MAXA:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 247
    const/16 v4, 0x16b

    sget-object v5, Lorg/apache/poi/ss/formula/functions/MinaMaxa;->MINA:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v5, v3, v4

    .line 249
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 250
    aget-object v0, v3, v2

    .line 251
    .local v0, "f":Lorg/apache/poi/ss/formula/functions/Function;
    if-nez v0, :cond_0

    .line 252
    invoke-static {v2}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v1

    .line 253
    .local v1, "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-nez v1, :cond_1

    .line 249
    .end local v1    # "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .restart local v1    # "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_1
    new-instance v4, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 259
    .end local v0    # "f":Lorg/apache/poi/ss/formula/functions/Function;
    .end local v1    # "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_2
    return-object v3
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/Function;

    .prologue
    .line 288
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v1

    .line 289
    .local v1, "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-nez v1, :cond_1

    .line 290
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->isATPFunction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a function from the Excel Analysis Toolpack. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Use AnalysisToolpack.registerFunction(String name, FreeRefFunction func) instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getIndex()I

    move-result v0

    .line 299
    .local v0, "idx":I
    sget-object v2, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    aget-object v2, v2, v0

    instance-of v2, v2, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;

    if-eqz v2, :cond_2

    .line 300
    sget-object v2, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    aput-object p1, v2, v0

    .line 305
    return-void

    .line 302
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POI already implememts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". You cannot override POI\'s implementations of Excel functions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
