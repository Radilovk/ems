.class public abstract Lorg/apache/poi/ss/format/CellFormatCondition;
.super Ljava/lang/Object;
.source "CellFormatCondition.java"


# static fields
.field private static final EQ:I = 0x4

.field private static final GE:I = 0x3

.field private static final GT:I = 0x2

.field private static final LE:I = 0x1

.field private static final LT:I = 0x0

.field private static final NE:I = 0x5

.field private static final TESTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    .line 39
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "<="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ">="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v2, "=="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!="

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v2, "<>"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatCondition;
    .locals 6
    .param p0, "opString"    # Ljava/lang/String;
    .param p1, "constStr"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, "test":I
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 69
    .local v1, "c":D
    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 101
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$6;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$6;-><init>(D)V

    return-object v3

    .line 107
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create for test number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_1
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$5;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$5;-><init>(D)V

    return-object v3

    .line 89
    :cond_2
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$4;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$4;-><init>(D)V

    return-object v3

    .line 83
    :cond_3
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$3;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$3;-><init>(D)V

    return-object v3

    .line 77
    :cond_4
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$2;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$2;-><init>(D)V

    return-object v3

    .line 71
    :cond_5
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$1;

    invoke-direct {v3, v1, v2}, Lorg/apache/poi/ss/format/CellFormatCondition$1;-><init>(D)V

    return-object v3

    .line 64
    .end local v0    # "test":I
    .end local v1    # "c":D
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown test: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract pass(D)Z
.end method
