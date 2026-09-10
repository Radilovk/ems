.class public final enum Lorg/apache/poi/ss/usermodel/IndexedColors;
.super Ljava/lang/Enum;
.source "IndexedColors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/IndexedColors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum AQUA:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum AUTOMATIC:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum BLUE_GREY:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum BRIGHT_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum BROWN:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum CORAL:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum CORNFLOWER_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum DARK_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum DARK_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum DARK_RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum DARK_TEAL:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum DARK_YELLOW:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum GOLD:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum GREY_25_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum GREY_40_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum GREY_50_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum GREY_80_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum INDIGO:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum LAVENDER:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum LEMON_CHIFFON:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum LIGHT_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum LIGHT_CORNFLOWER_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum LIGHT_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum LIGHT_ORANGE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum LIGHT_TURQUOISE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum LIGHT_YELLOW:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum LIME:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum MAROON:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum OLIVE_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum ORANGE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum ORCHID:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum PALE_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum PINK:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum PLUM:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum ROSE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum ROYAL_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum SEA_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum SKY_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum TAN:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum TEAL:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum TURQUOISE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum VIOLET:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum WHITE:Lorg/apache/poi/ss/usermodel/IndexedColors;

.field public static final enum YELLOW:Lorg/apache/poi/ss/usermodel/IndexedColors;


# instance fields
.field public final index:S


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "BLACK"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 35
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "WHITE"

    const/4 v2, 0x1

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->WHITE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 36
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "RED"

    const/4 v2, 0x2

    const/16 v5, 0xa

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 37
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "BRIGHT_GREEN"

    const/4 v2, 0x3

    const/16 v6, 0xb

    invoke-direct {v0, v1, v2, v6}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->BRIGHT_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 38
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "BLUE"

    const/4 v2, 0x4

    const/16 v7, 0xc

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "YELLOW"

    const/4 v2, 0x5

    const/16 v8, 0xd

    invoke-direct {v0, v1, v2, v8}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->YELLOW:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 40
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "PINK"

    const/4 v2, 0x6

    const/16 v9, 0xe

    invoke-direct {v0, v1, v2, v9}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->PINK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 41
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "TURQUOISE"

    const/4 v2, 0x7

    const/16 v10, 0xf

    invoke-direct {v0, v1, v2, v10}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->TURQUOISE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 42
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "DARK_RED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 43
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "GREEN"

    const/16 v11, 0x11

    invoke-direct {v0, v1, v4, v11}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 44
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "DARK_BLUE"

    const/16 v12, 0x12

    invoke-direct {v0, v1, v5, v12}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 45
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "DARK_YELLOW"

    const/16 v13, 0x13

    invoke-direct {v0, v1, v6, v13}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_YELLOW:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 46
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "VIOLET"

    const/16 v14, 0x14

    invoke-direct {v0, v1, v7, v14}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->VIOLET:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 47
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "TEAL"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v8, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->TEAL:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 48
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "GREY_25_PERCENT"

    const/16 v8, 0x16

    invoke-direct {v0, v1, v9, v8}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREY_25_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 49
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "GREY_50_PERCENT"

    const/16 v9, 0x17

    invoke-direct {v0, v1, v10, v9}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREY_50_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 50
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "CORNFLOWER_BLUE"

    const/16 v10, 0x18

    invoke-direct {v0, v1, v2, v10}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->CORNFLOWER_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 51
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "MAROON"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v11, v2}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->MAROON:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 52
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "LEMON_CHIFFON"

    const/16 v11, 0x1a

    invoke-direct {v0, v1, v12, v11}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->LEMON_CHIFFON:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 53
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "ORCHID"

    const/16 v12, 0x1c

    invoke-direct {v0, v1, v13, v12}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->ORCHID:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 54
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "CORAL"

    const/16 v13, 0x1d

    invoke-direct {v0, v1, v14, v13}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->CORAL:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 55
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "ROYAL_BLUE"

    const/16 v14, 0x1e

    invoke-direct {v0, v1, v15, v14}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->ROYAL_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 56
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "LIGHT_CORNFLOWER_BLUE"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v8, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_CORNFLOWER_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 57
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "SKY_BLUE"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v9, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->SKY_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 58
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "LIGHT_TURQUOISE"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v10, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_TURQUOISE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 59
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "LIGHT_GREEN"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v2, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 60
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "LIGHT_YELLOW"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_YELLOW:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 61
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "PALE_BLUE"

    const/16 v15, 0x1b

    const/16 v11, 0x2c

    invoke-direct {v0, v1, v15, v11}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->PALE_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 62
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "ROSE"

    const/16 v11, 0x2d

    invoke-direct {v0, v1, v12, v11}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->ROSE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 63
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "LAVENDER"

    const/16 v11, 0x2e

    invoke-direct {v0, v1, v13, v11}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->LAVENDER:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 64
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "TAN"

    const/16 v11, 0x2f

    invoke-direct {v0, v1, v14, v11}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->TAN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 65
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "LIGHT_BLUE"

    const/16 v11, 0x1f

    const/16 v15, 0x30

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 66
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "AQUA"

    const/16 v11, 0x20

    const/16 v15, 0x31

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->AQUA:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 67
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "LIME"

    const/16 v11, 0x21

    const/16 v15, 0x32

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIME:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 68
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "GOLD"

    const/16 v11, 0x22

    const/16 v15, 0x33

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->GOLD:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 69
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "LIGHT_ORANGE"

    const/16 v11, 0x23

    const/16 v15, 0x34

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_ORANGE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 70
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "ORANGE"

    const/16 v11, 0x24

    const/16 v15, 0x35

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->ORANGE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 71
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "BLUE_GREY"

    const/16 v11, 0x25

    const/16 v15, 0x36

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLUE_GREY:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 72
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "GREY_40_PERCENT"

    const/16 v11, 0x26

    const/16 v15, 0x37

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREY_40_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 73
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "DARK_TEAL"

    const/16 v11, 0x27

    const/16 v15, 0x38

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_TEAL:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 74
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "SEA_GREEN"

    const/16 v11, 0x28

    const/16 v15, 0x39

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->SEA_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 75
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "DARK_GREEN"

    const/16 v11, 0x29

    const/16 v15, 0x3a

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 76
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "OLIVE_GREEN"

    const/16 v11, 0x2a

    const/16 v15, 0x3b

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->OLIVE_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 77
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "BROWN"

    const/16 v11, 0x2b

    const/16 v15, 0x3c

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->BROWN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 78
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "PLUM"

    const/16 v11, 0x2c

    const/16 v15, 0x3d

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->PLUM:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 79
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "INDIGO"

    const/16 v11, 0x2d

    const/16 v15, 0x3e

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->INDIGO:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 80
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "GREY_80_PERCENT"

    const/16 v11, 0x2e

    const/16 v15, 0x3f

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREY_80_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 81
    new-instance v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    const-string v1, "AUTOMATIC"

    const/16 v11, 0x2f

    const/16 v15, 0x40

    invoke-direct {v0, v1, v11, v15}, Lorg/apache/poi/ss/usermodel/IndexedColors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->AUTOMATIC:Lorg/apache/poi/ss/usermodel/IndexedColors;

    .line 32
    const/16 v1, 0x30

    new-array v1, v1, [Lorg/apache/poi/ss/usermodel/IndexedColors;

    sget-object v11, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLACK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/4 v15, 0x0

    aput-object v11, v1, v15

    sget-object v11, Lorg/apache/poi/ss/usermodel/IndexedColors;->WHITE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/4 v15, 0x1

    aput-object v11, v1, v15

    sget-object v11, Lorg/apache/poi/ss/usermodel/IndexedColors;->RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/4 v15, 0x2

    aput-object v11, v1, v15

    sget-object v11, Lorg/apache/poi/ss/usermodel/IndexedColors;->BRIGHT_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/4 v15, 0x3

    aput-object v11, v1, v15

    sget-object v11, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/4 v15, 0x4

    aput-object v11, v1, v15

    sget-object v11, Lorg/apache/poi/ss/usermodel/IndexedColors;->YELLOW:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/4 v15, 0x5

    aput-object v11, v1, v15

    sget-object v11, Lorg/apache/poi/ss/usermodel/IndexedColors;->PINK:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/4 v15, 0x6

    aput-object v11, v1, v15

    sget-object v11, Lorg/apache/poi/ss/usermodel/IndexedColors;->TURQUOISE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/4 v15, 0x7

    aput-object v11, v1, v15

    sget-object v11, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_RED:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v11, v1, v3

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v3, v1, v5

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_YELLOW:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v3, v1, v6

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->VIOLET:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v3, v1, v7

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->TEAL:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v4, 0xd

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREY_25_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREY_50_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v4, 0xf

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->CORNFLOWER_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v4, 0x10

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->MAROON:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v4, 0x11

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->LEMON_CHIFFON:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v4, 0x12

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->ORCHID:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v4, 0x13

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->CORAL:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v4, 0x14

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->ROYAL_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v4, 0x15

    aput-object v3, v1, v4

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_CORNFLOWER_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v3, v1, v8

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->SKY_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v3, v1, v9

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_TURQUOISE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v3, v1, v10

    sget-object v3, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v3, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_YELLOW:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->PALE_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->ROSE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->LAVENDER:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v2, v1, v13

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->TAN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    aput-object v2, v1, v14

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_BLUE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->AQUA:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIME:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->GOLD:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->LIGHT_ORANGE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->ORANGE:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->BLUE_GREY:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREY_40_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_TEAL:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->SEA_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->DARK_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->OLIVE_GREEN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->BROWN:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->PLUM:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->INDIGO:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/IndexedColors;->GREY_80_PERCENT:Lorg/apache/poi/ss/usermodel/IndexedColors;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/poi/ss/usermodel/IndexedColors;->$VALUES:[Lorg/apache/poi/ss/usermodel/IndexedColors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    int-to-short p1, p3

    iput-short p1, p0, Lorg/apache/poi/ss/usermodel/IndexedColors;->index:S

    .line 87
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/IndexedColors;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/IndexedColors;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/IndexedColors;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/poi/ss/usermodel/IndexedColors;->$VALUES:[Lorg/apache/poi/ss/usermodel/IndexedColors;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/IndexedColors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/IndexedColors;

    return-object v0
.end method


# virtual methods
.method public getIndex()S
    .locals 1

    .line 95
    iget-short v0, p0, Lorg/apache/poi/ss/usermodel/IndexedColors;->index:S

    return v0
.end method
