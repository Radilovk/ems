.class public abstract Lorg/apache/poi/util/POILogger;
.super Ljava/lang/Object;
.source "POILogger.java"


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x7

.field public static final FATAL:I = 0x9

.field public static final INFO:I = 0x3

.field protected static final LEVEL_STRINGS:[Ljava/lang/String;

.field protected static final LEVEL_STRINGS_SHORT:[Ljava/lang/String;

.field public static final WARN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "?"

    aput-object v1, v0, v3

    const-string v1, "D"

    aput-object v1, v0, v4

    const-string v1, "?"

    aput-object v1, v0, v5

    const-string v1, "I"

    aput-object v1, v0, v6

    const-string v1, "?"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "W"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "?"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/util/POILogger;->LEVEL_STRINGS_SHORT:[Ljava/lang/String;

    .line 44
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "?0?"

    aput-object v1, v0, v3

    const-string v1, "DEBUG"

    aput-object v1, v0, v4

    const-string v1, "?2?"

    aput-object v1, v0, v5

    const-string v1, "INFO"

    aput-object v1, v0, v6

    const-string v1, "?4?"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "WARN"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "?6?"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ERROR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "?8?"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FATAL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "?10+?"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/util/POILogger;->LEVEL_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private commonLogFormatted(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "unflatParams"    # [Ljava/lang/Object;

    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-direct {p0, p3}, Lorg/apache/poi/util/POILogger;->flattenArrays([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 575
    .local v0, "params":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 577
    invoke-static {p2, v0}, Lorg/apache/poi/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, v2, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 585
    .end local v0    # "params":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 582
    .restart local v0    # "params":[Ljava/lang/Object;
    :cond_1
    invoke-static {p2, v0}, Lorg/apache/poi/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private flattenArrays([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 592
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 596
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/apache/poi/util/POILogger;->objectToObjectArray(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private objectToObjectArray(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v3, p1, [B

    if-eqz v3, :cond_0

    move-object v3, p1

    .line 607
    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 609
    .local v0, "array":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 611
    aget-byte v3, v0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .end local v0    # "array":[B
    .end local v1    # "j":I
    :cond_0
    instance-of v3, p1, [C

    if-eqz v3, :cond_1

    .line 616
    check-cast p1, [C

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [C

    .line 618
    .local v0, "array":[C
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_8

    .line 620
    aget-char v3, v0, v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 623
    .end local v0    # "array":[C
    .end local v1    # "j":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, [S

    if-eqz v3, :cond_2

    .line 625
    check-cast p1, [S

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [S

    .line 627
    .local v0, "array":[S
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_8

    .line 629
    aget-short v3, v0, v1

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 632
    .end local v0    # "array":[S
    .end local v1    # "j":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, [I

    if-eqz v3, :cond_3

    .line 634
    check-cast p1, [I

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [I

    .line 636
    .local v0, "array":[I
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_8

    .line 638
    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 641
    .end local v0    # "array":[I
    .end local v1    # "j":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, [J

    if-eqz v3, :cond_4

    .line 643
    check-cast p1, [J

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [J

    .line 645
    .local v0, "array":[J
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_4
    array-length v3, v0

    if-ge v1, v3, :cond_8

    .line 647
    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 650
    .end local v0    # "array":[J
    .end local v1    # "j":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, [F

    if-eqz v3, :cond_5

    .line 652
    check-cast p1, [F

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [F

    .line 654
    .local v0, "array":[F
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_5
    array-length v3, v0

    if-ge v1, v3, :cond_8

    .line 656
    new-instance v3, Ljava/lang/Float;

    aget v4, v0, v1

    invoke-direct {v3, v4}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 659
    .end local v0    # "array":[F
    .end local v1    # "j":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, [D

    if-eqz v3, :cond_6

    .line 661
    check-cast p1, [D

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [D

    .line 663
    .local v0, "array":[D
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_8

    .line 665
    new-instance v3, Ljava/lang/Double;

    aget-wide v4, v0, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 668
    .end local v0    # "array":[D
    .end local v1    # "j":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v3, p1, [Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 670
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 672
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_7
    array-length v3, v0

    if-ge v1, v3, :cond_8

    .line 674
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 679
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "j":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_7
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    .end local p1    # "object":Ljava/lang/Object;
    :cond_8
    return-object v2
.end method


# virtual methods
.method public abstract check(I)Z
.end method

.method public abstract initialize(Ljava/lang/String;)V
.end method

.method public abstract log(ILjava/lang/Object;)V
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 117
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 139
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 162
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 187
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "obj7"    # Ljava/lang/Object;

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 214
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "obj7"    # Ljava/lang/Object;
    .param p9, "obj8"    # Ljava/lang/Object;

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 242
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "obj7"    # Ljava/lang/Object;
    .param p9, "obj8"    # Ljava/lang/Object;
    .param p10, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p10}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 424
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "obj7"    # Ljava/lang/Object;
    .param p9, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p9}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 395
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p8}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 367
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p7}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 341
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 317
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p5}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 294
    :cond_0
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 273
    :cond_0
    return-void
.end method

.method public abstract log(ILjava/lang/Object;Ljava/lang/Throwable;)V
.end method

.method public log(ILjava/lang/Throwable;)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 253
    return-void
.end method

.method public logFormatted(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj1"    # Ljava/lang/Object;

    .prologue
    .line 453
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/util/POILogger;->commonLogFormatted(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 457
    return-void
.end method

.method public logFormatted(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj1"    # Ljava/lang/Object;
    .param p4, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 487
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/util/POILogger;->commonLogFormatted(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 491
    return-void
.end method

.method public logFormatted(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj1"    # Ljava/lang/Object;
    .param p4, "obj2"    # Ljava/lang/Object;
    .param p5, "obj3"    # Ljava/lang/Object;

    .prologue
    .line 523
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/util/POILogger;->commonLogFormatted(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 527
    return-void
.end method

.method public logFormatted(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj1"    # Ljava/lang/Object;
    .param p4, "obj2"    # Ljava/lang/Object;
    .param p5, "obj3"    # Ljava/lang/Object;
    .param p6, "obj4"    # Ljava/lang/Object;

    .prologue
    .line 560
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    aput-object p4, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    aput-object p6, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/util/POILogger;->commonLogFormatted(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 564
    return-void
.end method
