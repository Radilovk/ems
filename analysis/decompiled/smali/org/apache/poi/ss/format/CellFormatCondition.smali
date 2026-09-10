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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    .line 39
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v1, "<"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v1, "<="

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v1, ">"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v1, ">="

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v1, "="

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v1, "=="

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v1, "!="

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    const-string v1, "<>"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormatCondition;
    .locals 6
    .param p0, "opString"    # Ljava/lang/String;
    .param p1, "constStr"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown test: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_0
    sget-object v3, Lorg/apache/poi/ss/format/CellFormatCondition;->TESTS:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 67
    .local v2, "test":I
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 69
    .local v0, "c":D
    packed-switch v2, :pswitch_data_0

    .line 107
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create for test number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :pswitch_0
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$1;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/format/CellFormatCondition$1;-><init>(D)V

    .line 101
    :goto_0
    return-object v3

    .line 77
    :pswitch_1
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$2;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/format/CellFormatCondition$2;-><init>(D)V

    goto :goto_0

    .line 83
    :pswitch_2
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$3;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/format/CellFormatCondition$3;-><init>(D)V

    goto :goto_0

    .line 89
    :pswitch_3
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$4;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/format/CellFormatCondition$4;-><init>(D)V

    goto :goto_0

    .line 95
    :pswitch_4
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$5;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/format/CellFormatCondition$5;-><init>(D)V

    goto :goto_0

    .line 101
    :pswitch_5
    new-instance v3, Lorg/apache/poi/ss/format/CellFormatCondition$6;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/format/CellFormatCondition$6;-><init>(D)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public abstract pass(D)Z
.end method
