.class public final enum Lorg/apache/poi/ss/usermodel/FillPatternType;
.super Ljava/lang/Enum;
.source "FillPatternType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/poi/ss/usermodel/FillPatternType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum ALT_BARS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum BIG_SPOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum BRICKS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum DIAMONDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum FINE_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum LEAST_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum LESS_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum NO_FILL:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum SOLID_FOREGROUND:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum SPARSE_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum SQUARES:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum THICK_BACKWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum THICK_FORWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum THICK_HORZ_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum THICK_VERT_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum THIN_BACKWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum THIN_FORWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum THIN_HORZ_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

.field public static final enum THIN_VERT_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->NO_FILL:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 30
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "SOLID_FOREGROUND"

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->SOLID_FOREGROUND:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 33
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "FINE_DOTS"

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->FINE_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 36
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "ALT_BARS"

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->ALT_BARS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "SPARSE_DOTS"

    invoke-direct {v0, v1, v7}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->SPARSE_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 42
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "THICK_HORZ_BANDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->THICK_HORZ_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 45
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "THICK_VERT_BANDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->THICK_VERT_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 48
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "THICK_BACKWARD_DIAG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->THICK_BACKWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 51
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "THICK_FORWARD_DIAG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->THICK_FORWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 54
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "BIG_SPOTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->BIG_SPOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 57
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "BRICKS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->BRICKS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 60
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "THIN_HORZ_BANDS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->THIN_HORZ_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 63
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "THIN_VERT_BANDS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->THIN_VERT_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 66
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "THIN_BACKWARD_DIAG"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->THIN_BACKWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 69
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "THIN_FORWARD_DIAG"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->THIN_FORWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 72
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "SQUARES"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->SQUARES:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 75
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "DIAMONDS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->DIAMONDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 78
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "LESS_DOTS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->LESS_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 81
    new-instance v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    const-string v1, "LEAST_DOTS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/FillPatternType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->LEAST_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    .line 24
    const/16 v0, 0x13

    new-array v0, v0, [Lorg/apache/poi/ss/usermodel/FillPatternType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/FillPatternType;->NO_FILL:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/poi/ss/usermodel/FillPatternType;->SOLID_FOREGROUND:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/poi/ss/usermodel/FillPatternType;->FINE_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/poi/ss/usermodel/FillPatternType;->ALT_BARS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/poi/ss/usermodel/FillPatternType;->SPARSE_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->THICK_HORZ_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->THICK_VERT_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->THICK_BACKWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->THICK_FORWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->BIG_SPOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->BRICKS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->THIN_HORZ_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->THIN_VERT_BANDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->THIN_BACKWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->THIN_FORWARD_DIAG:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->SQUARES:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->DIAMONDS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->LESS_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/apache/poi/ss/usermodel/FillPatternType;->LEAST_DOTS:Lorg/apache/poi/ss/usermodel/FillPatternType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->$VALUES:[Lorg/apache/poi/ss/usermodel/FillPatternType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/FillPatternType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/FillPatternType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/FillPatternType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/apache/poi/ss/usermodel/FillPatternType;->$VALUES:[Lorg/apache/poi/ss/usermodel/FillPatternType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/FillPatternType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/FillPatternType;

    return-object v0
.end method
