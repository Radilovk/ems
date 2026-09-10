.class public Lorg/apache/poi/hssf/util/HSSFColor;
.super Ljava/lang/Object;
.source "HSSFColor.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Color;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/util/HSSFColor$AUTOMATIC;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_CORNFLOWER_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$ROYAL_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$CORAL;,
        Lorg/apache/poi/hssf/util/HSSFColor$ORCHID;,
        Lorg/apache/poi/hssf/util/HSSFColor$MAROON;,
        Lorg/apache/poi/hssf/util/HSSFColor$LEMON_CHIFFON;,
        Lorg/apache/poi/hssf/util/HSSFColor$CORNFLOWER_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$WHITE;,
        Lorg/apache/poi/hssf/util/HSSFColor$LAVENDER;,
        Lorg/apache/poi/hssf/util/HSSFColor$PALE_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_TURQUOISE;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_YELLOW;,
        Lorg/apache/poi/hssf/util/HSSFColor$TAN;,
        Lorg/apache/poi/hssf/util/HSSFColor$ROSE;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREY_25_PERCENT;,
        Lorg/apache/poi/hssf/util/HSSFColor$PLUM;,
        Lorg/apache/poi/hssf/util/HSSFColor$SKY_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$TURQUOISE;,
        Lorg/apache/poi/hssf/util/HSSFColor$BRIGHT_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$YELLOW;,
        Lorg/apache/poi/hssf/util/HSSFColor$GOLD;,
        Lorg/apache/poi/hssf/util/HSSFColor$PINK;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREY_40_PERCENT;,
        Lorg/apache/poi/hssf/util/HSSFColor$VIOLET;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$AQUA;,
        Lorg/apache/poi/hssf/util/HSSFColor$SEA_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIME;,
        Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_ORANGE;,
        Lorg/apache/poi/hssf/util/HSSFColor$RED;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;,
        Lorg/apache/poi/hssf/util/HSSFColor$BLUE_GREY;,
        Lorg/apache/poi/hssf/util/HSSFColor$BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$TEAL;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_YELLOW;,
        Lorg/apache/poi/hssf/util/HSSFColor$ORANGE;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_RED;,
        Lorg/apache/poi/hssf/util/HSSFColor$GREY_80_PERCENT;,
        Lorg/apache/poi/hssf/util/HSSFColor$INDIGO;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_BLUE;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_TEAL;,
        Lorg/apache/poi/hssf/util/HSSFColor$DARK_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$OLIVE_GREEN;,
        Lorg/apache/poi/hssf/util/HSSFColor$BROWN;,
        Lorg/apache/poi/hssf/util/HSSFColor$BLACK;
    }
.end annotation


# static fields
.field private static indexHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static createColorsByHexStringMap()Ljava/util/Hashtable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getAllColors()[Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 160
    .local v0, "colors":[Lorg/apache/poi/hssf/util/HSSFColor;
    new-instance v1, Ljava/util/Hashtable;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 162
    .local v1, "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lorg/apache/poi/hssf/util/HSSFColor;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 163
    aget-object v3, v0, v2

    .line 165
    .local v3, "color":Lorg/apache/poi/hssf/util/HSSFColor;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getHexString()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "hexString":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 174
    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v3    # "color":Lorg/apache/poi/hssf/util/HSSFColor;
    .end local v4    # "hexString":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    .restart local v3    # "color":Lorg/apache/poi/hssf/util/HSSFColor;
    .restart local v4    # "hexString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/util/HSSFColor;

    .line 168
    .local v5, "other":Lorg/apache/poi/hssf/util/HSSFColor;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dup color hexString ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") for color ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " already taken by ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 176
    .end local v2    # "i":I
    .end local v3    # "color":Lorg/apache/poi/hssf/util/HSSFColor;
    .end local v4    # "hexString":Ljava/lang/String;
    .end local v5    # "other":Lorg/apache/poi/hssf/util/HSSFColor;
    :cond_1
    return-object v1
.end method

.method private static createColorsByIndexMap()Ljava/util/Hashtable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    .line 70
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->getAllColors()[Lorg/apache/poi/hssf/util/HSSFColor;

    move-result-object v0

    .line 71
    .local v0, "colors":[Lorg/apache/poi/hssf/util/HSSFColor;
    new-instance v1, Ljava/util/Hashtable;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 73
    .local v1, "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lorg/apache/poi/hssf/util/HSSFColor;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 74
    aget-object v3, v0, v2

    .line 76
    .local v3, "color":Lorg/apache/poi/hssf/util/HSSFColor;
    invoke-virtual {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 77
    .local v4, "index1":Ljava/lang/Integer;
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v3    # "color":Lorg/apache/poi/hssf/util/HSSFColor;
    .end local v4    # "index1":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .restart local v3    # "color":Lorg/apache/poi/hssf/util/HSSFColor;
    .restart local v4    # "index1":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/util/HSSFColor;

    .line 79
    .local v5, "prevColor":Lorg/apache/poi/hssf/util/HSSFColor;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dup color index ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") for colors ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "),("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 86
    .end local v2    # "i":I
    .end local v3    # "color":Lorg/apache/poi/hssf/util/HSSFColor;
    .end local v4    # "index1":Ljava/lang/Integer;
    .end local v5    # "prevColor":Lorg/apache/poi/hssf/util/HSSFColor;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 87
    aget-object v3, v0, v2

    .line 88
    .restart local v3    # "color":Lorg/apache/poi/hssf/util/HSSFColor;
    invoke-static {v3}, Lorg/apache/poi/hssf/util/HSSFColor;->getIndex2(Lorg/apache/poi/hssf/util/HSSFColor;)Ljava/lang/Integer;

    move-result-object v4

    .line 89
    .local v4, "index2":Ljava/lang/Integer;
    if-nez v4, :cond_2

    .line 91
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v3    # "color":Lorg/apache/poi/hssf/util/HSSFColor;
    .end local v4    # "index2":Ljava/lang/Integer;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method private static getAllColors()[Lorg/apache/poi/hssf/util/HSSFColor;
    .locals 3

    .line 129
    const/16 v0, 0x2f

    new-array v0, v0, [Lorg/apache/poi/hssf/util/HSSFColor;

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$BLACK;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$BLACK;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$BROWN;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$BROWN;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$OLIVE_GREEN;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$OLIVE_GREEN;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$DARK_GREEN;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_GREEN;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$DARK_TEAL;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_TEAL;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$DARK_BLUE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_BLUE;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$INDIGO;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$INDIGO;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$GREY_80_PERCENT;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$GREY_80_PERCENT;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$ORANGE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$ORANGE;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$DARK_YELLOW;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_YELLOW;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$GREEN;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$GREEN;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$TEAL;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$TEAL;-><init>()V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$BLUE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$BLUE;-><init>()V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$BLUE_GREY;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$BLUE_GREY;-><init>()V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$GREY_50_PERCENT;-><init>()V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$RED;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$RED;-><init>()V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_ORANGE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_ORANGE;-><init>()V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$LIME;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$LIME;-><init>()V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$SEA_GREEN;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$SEA_GREEN;-><init>()V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$AQUA;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$AQUA;-><init>()V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_BLUE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_BLUE;-><init>()V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$VIOLET;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$VIOLET;-><init>()V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$GREY_40_PERCENT;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$GREY_40_PERCENT;-><init>()V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$PINK;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$PINK;-><init>()V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$GOLD;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$GOLD;-><init>()V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$YELLOW;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$YELLOW;-><init>()V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$BRIGHT_GREEN;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$BRIGHT_GREEN;-><init>()V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$TURQUOISE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$TURQUOISE;-><init>()V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$DARK_RED;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$DARK_RED;-><init>()V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$SKY_BLUE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$SKY_BLUE;-><init>()V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$PLUM;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$PLUM;-><init>()V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$GREY_25_PERCENT;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$GREY_25_PERCENT;-><init>()V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$ROSE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$ROSE;-><init>()V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_YELLOW;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_YELLOW;-><init>()V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_GREEN;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_GREEN;-><init>()V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_TURQUOISE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_TURQUOISE;-><init>()V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$PALE_BLUE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$PALE_BLUE;-><init>()V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$LAVENDER;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$LAVENDER;-><init>()V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$WHITE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$WHITE;-><init>()V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$CORNFLOWER_BLUE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$CORNFLOWER_BLUE;-><init>()V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$LEMON_CHIFFON;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$LEMON_CHIFFON;-><init>()V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$MAROON;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$MAROON;-><init>()V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$ORCHID;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$ORCHID;-><init>()V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$CORAL;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$CORAL;-><init>()V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$ROYAL_BLUE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$ROYAL_BLUE;-><init>()V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_CORNFLOWER_BLUE;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$LIGHT_CORNFLOWER_BLUE;-><init>()V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/poi/hssf/util/HSSFColor$TAN;

    invoke-direct {v1}, Lorg/apache/poi/hssf/util/HSSFColor$TAN;-><init>()V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static getIndex2(Lorg/apache/poi/hssf/util/HSSFColor;)Ljava/lang/Integer;
    .locals 4
    .param p0, "color"    # Lorg/apache/poi/hssf/util/HSSFColor;

    .line 110
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "index2"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    .line 114
    .local v1, "f":Ljava/lang/reflect/Field;
    nop

    .line 118
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 123
    .local v0, "s":Ljava/lang/Short;
    nop

    .line 124
    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 121
    .end local v0    # "s":Ljava/lang/Short;
    :catch_0
    move-exception v2

    .line 122
    .restart local v0    # "s":Ljava/lang/Short;
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 119
    .end local v0    # "s":Ljava/lang/Short;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 120
    .restart local v0    # "s":Ljava/lang/Short;
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 111
    .end local v0    # "s":Ljava/lang/Short;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 113
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    .local v2, "f":Ljava/lang/reflect/Field;
    return-object v0
.end method

.method public static final getIndexHash()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor;->indexHash:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->createColorsByIndexMap()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/util/HSSFColor;->indexHash:Ljava/util/Map;

    .line 57
    :cond_0
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor;->indexHash:Ljava/util/Map;

    return-object v0
.end method

.method public static final getMutableIndexHash()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    .line 66
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->createColorsByIndexMap()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public static final getTripletHash()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/hssf/util/HSSFColor;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-static {}, Lorg/apache/poi/hssf/util/HSSFColor;->createColorsByHexStringMap()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHexString()Ljava/lang/String;
    .locals 1

    .line 205
    const-string v0, "0:0:0"

    return-object v0
.end method

.method public getIndex()S
    .locals 1

    .line 185
    const/16 v0, 0x8

    return v0
.end method

.method public getTriplet()[S
    .locals 1

    .line 194
    sget-object v0, Lorg/apache/poi/hssf/util/HSSFColor$BLACK;->triplet:[S

    return-object v0
.end method
