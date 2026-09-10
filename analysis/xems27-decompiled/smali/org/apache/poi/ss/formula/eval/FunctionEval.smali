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

    .line 55
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/FunctionEval;->produceFunctions()[Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getBasicFunction(I)Lorg/apache/poi/ss/formula/functions/Function;
    .locals 4
    .param p0, "functionIndex"    # I

    .line 266
    const/16 v0, 0x94

    if-eq p0, v0, :cond_1

    const/16 v0, 0xff

    if-eq p0, v0, :cond_1

    .line 272
    sget-object v0, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    aget-object v0, v0, p0

    .line 273
    .local v0, "result":Lorg/apache/poi/ss/formula/functions/Function;
    if-eqz v0, :cond_0

    .line 276
    return-object v0

    .line 274
    :cond_0
    new-instance v1, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FuncIx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    .end local v0    # "result":Lorg/apache/poi/ss/formula/functions/Function;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 334
    .local v0, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 335
    aget-object v2, v2, v1

    .line 336
    .local v2, "func":Lorg/apache/poi/ss/formula/functions/Function;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;

    if-eqz v3, :cond_0

    .line 337
    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v3

    .line 338
    .local v3, "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v2    # "func":Lorg/apache/poi/ss/formula/functions/Function;
    .end local v3    # "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    :cond_1
    const-string v1, "INDIRECT"

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 342
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 315
    .local v0, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 316
    aget-object v2, v2, v1

    .line 317
    .local v2, "func":Lorg/apache/poi/ss/formula/functions/Function;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v3

    .line 318
    .local v3, "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-eqz v2, :cond_0

    instance-of v4, v2, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;

    if-nez v4, :cond_0

    .line 319
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v2    # "func":Lorg/apache/poi/ss/formula/functions/Function;
    .end local v3    # "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "i":I
    :cond_1
    const-string v1, "INDIRECT"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method private static produceFunctions()[Lorg/apache/poi/ss/formula/functions/Function;
    .locals 6

    .line 58
    const/16 v0, 0x170

    new-array v0, v0, [Lorg/apache/poi/ss/formula/functions/Function;

    .line 60
    .local v0, "retval":[Lorg/apache/poi/ss/formula/functions/Function;
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Count;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Count;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    new-instance v1, Lorg/apache/poi/ss/formula/functions/IfFunc;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/IfFunc;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 62
    sget-object v1, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISNA:Lorg/apache/poi/ss/formula/functions/Function;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 63
    sget-object v1, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISERROR:Lorg/apache/poi/ss/formula/functions/Function;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 64
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUM:Lorg/apache/poi/ss/formula/functions/Function;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 65
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 66
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MIN:Lorg/apache/poi/ss/formula/functions/Function;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 67
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MAX:Lorg/apache/poi/ss/formula/functions/Function;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 68
    new-instance v1, Lorg/apache/poi/ss/formula/functions/RowFunc;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/RowFunc;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 69
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Column;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Column;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 70
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Na;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Na;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 71
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Npv;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Npv;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 72
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 73
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->DOLLAR:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 74
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Fixed;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Fixed;-><init>()V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 75
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SIN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 76
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->COS:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 77
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TAN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 78
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ATAN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 79
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->PI:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 80
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SQRT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 81
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->EXP:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 82
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 83
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG10:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 84
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ABS:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 85
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->INT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 86
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SIGN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 87
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ROUND:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 88
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Lookup;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Lookup;-><init>()V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 89
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Index;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Index;-><init>()V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 90
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Rept;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Rept;-><init>()V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 91
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->MID:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 92
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->LEN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 93
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Value;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Value;-><init>()V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 94
    sget-object v1, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->TRUE:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 95
    sget-object v1, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->FALSE:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 96
    sget-object v1, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->AND:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 97
    sget-object v1, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->OR:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 98
    sget-object v1, Lorg/apache/poi/ss/formula/functions/BooleanFunction;->NOT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 99
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->MOD:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 101
    new-instance v1, Lorg/apache/poi/ss/formula/functions/DStarRunner;

    new-instance v2, Lorg/apache/poi/ss/formula/functions/DMin;

    invoke-direct {v2}, Lorg/apache/poi/ss/formula/functions/DMin;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/functions/DStarRunner;-><init>(Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 103
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VAR:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 104
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->TEXT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 106
    sget-object v1, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->PV:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 107
    sget-object v1, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->FV:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 108
    sget-object v1, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->NPER:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 109
    sget-object v1, Lorg/apache/poi/ss/formula/functions/FinanceFunction;->PMT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 110
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Rate;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Rate;-><init>()V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 111
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Mirr;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Mirr;-><init>()V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 112
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Irr;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Irr;-><init>()V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 113
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->RAND:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 114
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Match;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Match;-><init>()V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 115
    sget-object v1, Lorg/apache/poi/ss/formula/functions/DateFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 116
    new-instance v1, Lorg/apache/poi/ss/formula/functions/TimeFunc;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/TimeFunc;-><init>()V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 117
    sget-object v1, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->DAY:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 118
    sget-object v1, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->MONTH:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 119
    sget-object v1, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->YEAR:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 120
    sget-object v1, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 121
    sget-object v1, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->HOUR:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 122
    sget-object v1, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->MINUTE:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 123
    sget-object v1, Lorg/apache/poi/ss/formula/functions/CalendarFieldFunction;->SECOND:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 124
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Now;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Now;-><init>()V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 126
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Rows;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Rows;-><init>()V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 127
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Columns;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Columns;-><init>()V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 128
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->SEARCH:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 129
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Offset;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Offset;-><init>()V

    const/16 v3, 0x4e

    aput-object v1, v0, v3

    .line 130
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->SEARCH:Lorg/apache/poi/ss/formula/functions/Function;

    aput-object v1, v0, v2

    .line 132
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ATAN2:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 133
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ASIN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 134
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ACOS:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 135
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Choose;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Choose;-><init>()V

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 136
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Hlookup;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Hlookup;-><init>()V

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 137
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Vlookup;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Vlookup;-><init>()V

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 139
    sget-object v1, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISREF:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 141
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->LOG:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 143
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->CHAR:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 144
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->LOWER:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 145
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->UPPER:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x71

    aput-object v1, v0, v2

    .line 146
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->PROPER:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 147
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->LEFT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 148
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->RIGHT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x74

    aput-object v1, v0, v2

    .line 149
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->EXACT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x75

    aput-object v1, v0, v2

    .line 150
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->TRIM:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x76

    aput-object v1, v0, v2

    .line 151
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Replace;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Replace;-><init>()V

    const/16 v2, 0x77

    aput-object v1, v0, v2

    .line 152
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Substitute;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Substitute;-><init>()V

    const/16 v2, 0x78

    aput-object v1, v0, v2

    .line 153
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Code;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Code;-><init>()V

    const/16 v2, 0x79

    aput-object v1, v0, v2

    .line 155
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->FIND:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 157
    sget-object v1, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISERR:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    .line 158
    sget-object v1, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISTEXT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    .line 159
    sget-object v1, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISNUMBER:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x80

    aput-object v1, v0, v2

    .line 160
    sget-object v1, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISBLANK:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x81

    aput-object v1, v0, v2

    .line 161
    new-instance v1, Lorg/apache/poi/ss/formula/functions/T;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/T;-><init>()V

    const/16 v2, 0x82

    aput-object v1, v0, v2

    .line 163
    const/16 v1, 0x94

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 165
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->CLEAN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xa2

    aput-object v1, v0, v3

    .line 166
    new-instance v1, Lorg/apache/poi/ss/formula/functions/IPMT;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/IPMT;-><init>()V

    const/16 v3, 0xa7

    aput-object v1, v0, v3

    .line 167
    new-instance v1, Lorg/apache/poi/ss/formula/functions/PPMT;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/PPMT;-><init>()V

    const/16 v3, 0xa8

    aput-object v1, v0, v3

    .line 168
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Counta;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Counta;-><init>()V

    const/16 v3, 0xa9

    aput-object v1, v0, v3

    .line 170
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xb7

    aput-object v1, v0, v3

    .line 171
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->FACT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xb8

    aput-object v1, v0, v3

    .line 173
    sget-object v1, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISNONTEXT:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xbe

    aput-object v1, v0, v3

    .line 174
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->VARP:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xc2

    aput-object v1, v0, v3

    .line 175
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TRUNC:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xc5

    aput-object v1, v0, v3

    .line 176
    sget-object v1, Lorg/apache/poi/ss/formula/functions/LogicalFunction;->ISLOGICAL:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xc6

    aput-object v1, v0, v3

    .line 178
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ROUNDUP:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xd4

    aput-object v1, v0, v3

    .line 179
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ROUNDDOWN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xd5

    aput-object v1, v0, v3

    .line 180
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Rank;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Rank;-><init>()V

    const/16 v3, 0xd8

    aput-object v1, v0, v3

    .line 181
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Address;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Address;-><init>()V

    const/16 v3, 0xdb

    aput-object v1, v0, v3

    .line 182
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Days360;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Days360;-><init>()V

    const/16 v3, 0xdc

    aput-object v1, v0, v3

    .line 183
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Today;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Today;-><init>()V

    const/16 v3, 0xdd

    aput-object v1, v0, v3

    .line 185
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MEDIAN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xe3

    aput-object v1, v0, v3

    .line 186
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Sumproduct;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Sumproduct;-><init>()V

    const/16 v3, 0xe4

    aput-object v1, v0, v3

    .line 187
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->SINH:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xe5

    aput-object v1, v0, v3

    .line 188
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->COSH:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xe6

    aput-object v1, v0, v3

    .line 189
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TANH:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xe7

    aput-object v1, v0, v3

    .line 190
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ASINH:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xe8

    aput-object v1, v0, v3

    .line 191
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ACOSH:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xe9

    aput-object v1, v0, v3

    .line 192
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->ATANH:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v3, 0xea

    aput-object v1, v0, v3

    .line 194
    new-instance v1, Lorg/apache/poi/ss/formula/functions/DStarRunner;

    new-instance v3, Lorg/apache/poi/ss/formula/functions/DGet;

    invoke-direct {v3}, Lorg/apache/poi/ss/formula/functions/DGet;-><init>()V

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/functions/DStarRunner;-><init>(Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;)V

    const/16 v3, 0xeb

    aput-object v1, v0, v3

    .line 196
    const/16 v1, 0xff

    aput-object v2, v0, v1

    .line 198
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Errortype;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Errortype;-><init>()V

    const/16 v2, 0x105

    aput-object v1, v0, v2

    .line 200
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVEDEV:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x10d

    aput-object v1, v0, v2

    .line 202
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->COMBIN:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x114

    aput-object v1, v0, v2

    .line 204
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Even;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Even;-><init>()V

    const/16 v2, 0x117

    aput-object v1, v0, v2

    .line 206
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->FLOOR:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x11d

    aput-object v1, v0, v2

    .line 208
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->CEILING:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x120

    aput-object v1, v0, v2

    .line 210
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Odd;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Odd;-><init>()V

    const/16 v2, 0x12a

    aput-object v1, v0, v2

    .line 212
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->POISSON:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x12c

    aput-object v1, v0, v2

    .line 214
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Sumxmy2;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Sumxmy2;-><init>()V

    const/16 v2, 0x12f

    aput-object v1, v0, v2

    .line 215
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Sumx2my2;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Sumx2my2;-><init>()V

    const/16 v2, 0x130

    aput-object v1, v0, v2

    .line 216
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Sumx2py2;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Sumx2py2;-><init>()V

    const/16 v2, 0x131

    aput-object v1, v0, v2

    .line 218
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Intercept;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Intercept;-><init>()V

    const/16 v2, 0x137

    aput-object v1, v0, v2

    .line 219
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Slope;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Slope;-><init>()V

    const/16 v2, 0x13b

    aput-object v1, v0, v2

    .line 221
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->DEVSQ:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x13e

    aput-object v1, v0, v2

    .line 223
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUMSQ:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x141

    aput-object v1, v0, v2

    .line 225
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->LARGE:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x145

    aput-object v1, v0, v2

    .line 226
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SMALL:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x146

    aput-object v1, v0, v2

    .line 227
    sget-object v1, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PERCENTILE:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x148

    aput-object v1, v0, v2

    .line 229
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Mode;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Mode;-><init>()V

    const/16 v2, 0x14a

    aput-object v1, v0, v2

    .line 231
    sget-object v1, Lorg/apache/poi/ss/formula/functions/TextFunction;->CONCATENATE:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x150

    aput-object v1, v0, v2

    .line 232
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->POWER:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x151

    aput-object v1, v0, v2

    .line 234
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->RADIANS:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x156

    aput-object v1, v0, v2

    .line 235
    sget-object v1, Lorg/apache/poi/ss/formula/functions/NumericFunction;->DEGREES:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x157

    aput-object v1, v0, v2

    .line 237
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Subtotal;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Subtotal;-><init>()V

    const/16 v2, 0x158

    aput-object v1, v0, v2

    .line 238
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Sumif;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Sumif;-><init>()V

    const/16 v2, 0x159

    aput-object v1, v0, v2

    .line 239
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Countif;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Countif;-><init>()V

    const/16 v2, 0x15a

    aput-object v1, v0, v2

    .line 240
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Countblank;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Countblank;-><init>()V

    const/16 v2, 0x15b

    aput-object v1, v0, v2

    .line 242
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Roman;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Roman;-><init>()V

    const/16 v2, 0x162

    aput-object v1, v0, v2

    .line 244
    new-instance v1, Lorg/apache/poi/ss/formula/functions/Hyperlink;

    invoke-direct {v1}, Lorg/apache/poi/ss/formula/functions/Hyperlink;-><init>()V

    const/16 v2, 0x167

    aput-object v1, v0, v2

    .line 246
    sget-object v1, Lorg/apache/poi/ss/formula/functions/MinaMaxa;->MAXA:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x16a

    aput-object v1, v0, v2

    .line 247
    sget-object v1, Lorg/apache/poi/ss/formula/functions/MinaMaxa;->MINA:Lorg/apache/poi/ss/formula/functions/Function;

    const/16 v2, 0x16b

    aput-object v1, v0, v2

    .line 249
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 250
    aget-object v2, v0, v1

    .line 251
    .local v2, "f":Lorg/apache/poi/ss/formula/functions/Function;
    if-nez v2, :cond_1

    .line 252
    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByIndex(I)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v3

    .line 253
    .local v3, "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-nez v3, :cond_0

    .line 254
    goto :goto_1

    .line 256
    :cond_0
    new-instance v4, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 249
    .end local v2    # "f":Lorg/apache/poi/ss/formula/functions/Function;
    .end local v3    # "fm":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/Function;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/Function;

    .line 288
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    .line 289
    .local v0, "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-nez v0, :cond_1

    .line 290
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->isATPFunction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is a function from the Excel Analysis Toolpack. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Use AnalysisToolpack.registerFunction(String name, FreeRefFunction func) instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown function: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getIndex()I

    move-result v1

    .line 299
    .local v1, "idx":I
    sget-object v2, Lorg/apache/poi/ss/formula/eval/FunctionEval;->functions:[Lorg/apache/poi/ss/formula/functions/Function;

    aget-object v3, v2, v1

    instance-of v3, v3, Lorg/apache/poi/ss/formula/functions/NotImplementedFunction;

    if-eqz v3, :cond_2

    .line 300
    aput-object p1, v2, v1

    .line 305
    return-void

    .line 302
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POI already implememts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". You cannot override POI\'s implementations of Excel functions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
