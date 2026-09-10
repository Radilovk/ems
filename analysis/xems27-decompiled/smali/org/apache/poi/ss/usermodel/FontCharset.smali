.class public final enum Lorg/apache/poi/ss/usermodel/FontCharset;
.super Ljava/lang/Enum;
.source "FontCharset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/FontCharset;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum ANSI:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum ARABIC:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum BALTIC:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum CHINESEBIG5:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum DEFAULT:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum EASTEUROPE:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum GB2312:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum GREEK:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum HANGEUL:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum HEBREW:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum JOHAB:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum MAC:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum OEM:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum RUSSIAN:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum SHIFTJIS:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum SYMBOL:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum THAI:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum TURKISH:Lorg/apache/poi/ss/usermodel/FontCharset;

.field public static final enum VIETNAMESE:Lorg/apache/poi/ss/usermodel/FontCharset;

.field private static _table:[Lorg/apache/poi/ss/usermodel/FontCharset;


# instance fields
.field private charset:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 29
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "ANSI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->ANSI:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 30
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->DEFAULT:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 31
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "SYMBOL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->SYMBOL:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 32
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "MAC"

    const/4 v5, 0x3

    const/16 v6, 0x4d

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->MAC:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 33
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "SHIFTJIS"

    const/4 v6, 0x4

    const/16 v7, 0x80

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->SHIFTJIS:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 34
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "HANGEUL"

    const/4 v7, 0x5

    const/16 v8, 0x81

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->HANGEUL:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 35
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "JOHAB"

    const/4 v8, 0x6

    const/16 v9, 0x82

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->JOHAB:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 36
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "GB2312"

    const/4 v9, 0x7

    const/16 v10, 0x86

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->GB2312:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 37
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "CHINESEBIG5"

    const/16 v10, 0x8

    const/16 v11, 0x88

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->CHINESEBIG5:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 38
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "GREEK"

    const/16 v11, 0x9

    const/16 v12, 0xa1

    invoke-direct {v0, v1, v11, v12}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->GREEK:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "TURKISH"

    const/16 v12, 0xa

    const/16 v13, 0xa2

    invoke-direct {v0, v1, v12, v13}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->TURKISH:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 40
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "VIETNAMESE"

    const/16 v13, 0xb

    const/16 v14, 0xa3

    invoke-direct {v0, v1, v13, v14}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->VIETNAMESE:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 41
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "HEBREW"

    const/16 v14, 0xc

    const/16 v15, 0xb1

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->HEBREW:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 42
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "ARABIC"

    const/16 v15, 0xd

    const/16 v14, 0xb2

    invoke-direct {v0, v1, v15, v14}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->ARABIC:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 43
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "BALTIC"

    const/16 v14, 0xe

    const/16 v15, 0xba

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->BALTIC:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 44
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "RUSSIAN"

    const/16 v15, 0xf

    const/16 v14, 0xcc

    invoke-direct {v0, v1, v15, v14}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->RUSSIAN:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 45
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "THAI"

    const/16 v14, 0x10

    const/16 v15, 0xde

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->THAI:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 46
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "EASTEUROPE"

    const/16 v15, 0x11

    const/16 v14, 0xee

    invoke-direct {v0, v1, v15, v14}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->EASTEUROPE:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 47
    new-instance v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    const-string v1, "OEM"

    const/16 v14, 0x12

    const/16 v15, 0xff

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/poi/ss/usermodel/FontCharset;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->OEM:Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 27
    const/16 v1, 0x13

    new-array v1, v1, [Lorg/apache/poi/ss/usermodel/FontCharset;

    sget-object v15, Lorg/apache/poi/ss/usermodel/FontCharset;->ANSI:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v15, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->DEFAULT:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->SYMBOL:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->MAC:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->SHIFTJIS:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->HANGEUL:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->JOHAB:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->GB2312:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->CHINESEBIG5:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->GREEK:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->TURKISH:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->VIETNAMESE:Lorg/apache/poi/ss/usermodel/FontCharset;

    aput-object v2, v1, v13

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->HEBREW:Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->ARABIC:Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->BALTIC:Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->RUSSIAN:Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->THAI:Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/FontCharset;->EASTEUROPE:Lorg/apache/poi/ss/usermodel/FontCharset;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    aput-object v0, v1, v14

    sput-object v1, Lorg/apache/poi/ss/usermodel/FontCharset;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 65
    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/poi/ss/usermodel/FontCharset;

    sput-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->_table:[Lorg/apache/poi/ss/usermodel/FontCharset;

    .line 67
    invoke-static {}, Lorg/apache/poi/ss/usermodel/FontCharset;->values()[Lorg/apache/poi/ss/usermodel/FontCharset;

    move-result-object v0

    .local v0, "arr$":[Lorg/apache/poi/ss/usermodel/FontCharset;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 68
    .local v3, "c":Lorg/apache/poi/ss/usermodel/FontCharset;
    sget-object v4, Lorg/apache/poi/ss/usermodel/FontCharset;->_table:[Lorg/apache/poi/ss/usermodel/FontCharset;

    invoke-virtual {v3}, Lorg/apache/poi/ss/usermodel/FontCharset;->getValue()I

    move-result v5

    aput-object v3, v4, v5

    .line 67
    .end local v3    # "c":Lorg/apache/poi/ss/usermodel/FontCharset;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "arr$":[Lorg/apache/poi/ss/usermodel/FontCharset;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lorg/apache/poi/ss/usermodel/FontCharset;->charset:I

    .line 54
    return-void
.end method

.method public static valueOf(I)Lorg/apache/poi/ss/usermodel/FontCharset;
    .locals 2
    .param p0, "value"    # I

    .line 73
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->_table:[Lorg/apache/poi/ss/usermodel/FontCharset;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FontCharset;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FontCharset;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FontCharset;
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/poi/ss/usermodel/FontCharset;->$VALUES:[Lorg/apache/poi/ss/usermodel/FontCharset;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/FontCharset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/FontCharset;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/apache/poi/ss/usermodel/FontCharset;->charset:I

    return v0
.end method
