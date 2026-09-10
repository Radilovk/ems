.class public final enum Lorg/apache/poi/ss/usermodel/BorderStyle;
.super Ljava/lang/Enum;
.source "BorderStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/BorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum DASH_DOT_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum DOTTED:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum DOUBLE:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum HAIR:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum MEDIUM:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum MEDIUM_DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum MEDIUM_DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum MEDIUM_DASH_DOT_DOTC:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum SLANTED_DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum THICK:Lorg/apache/poi/ss/usermodel/BorderStyle;

.field public static final enum THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 31
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 37
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "THIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 43
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 49
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "DASHED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 55
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "DOTTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->DOTTED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 61
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "THICK"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->THICK:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 67
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "DOUBLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->DOUBLE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 73
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "HAIR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->HAIR:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 79
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "MEDIUM_DASHED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 85
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "DASH_DOT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 91
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "MEDIUM_DASH_DOT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 97
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "DASH_DOT_DOT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASH_DOT_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 103
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "MEDIUM_DASH_DOT_DOTC"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASH_DOT_DOTC:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 109
    new-instance v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    const-string v1, "SLANTED_DASH_DOT"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lorg/apache/poi/ss/usermodel/BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->SLANTED_DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    .line 25
    const/16 v1, 0xe

    new-array v1, v1, [Lorg/apache/poi/ss/usermodel/BorderStyle;

    sget-object v16, Lorg/apache/poi/ss/usermodel/BorderStyle;->NONE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v16, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->THIN:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->DOTTED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->THICK:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->DOUBLE:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->HAIR:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v9

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASHED:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v10

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v11

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASH_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v12

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->DASH_DOT_DOT:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v13

    sget-object v2, Lorg/apache/poi/ss/usermodel/BorderStyle;->MEDIUM_DASH_DOT_DOTC:Lorg/apache/poi/ss/usermodel/BorderStyle;

    aput-object v2, v1, v14

    aput-object v0, v1, v15

    sput-object v1, Lorg/apache/poi/ss/usermodel/BorderStyle;->$VALUES:[Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/BorderStyle;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/poi/ss/usermodel/BorderStyle;->$VALUES:[Lorg/apache/poi/ss/usermodel/BorderStyle;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/BorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/BorderStyle;

    return-object v0
.end method
