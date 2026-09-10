.class public final enum Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
.super Ljava/lang/Enum;
.source "HorizontalAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/HorizontalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

.field public static final enum CENTER:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

.field public static final enum CENTER_SELECTION:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

.field public static final enum DISTRIBUTED:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

.field public static final enum FILL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

.field public static final enum GENERAL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

.field public static final enum JUSTIFY:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

.field public static final enum LEFT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

.field public static final enum RIGHT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 31
    new-instance v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const-string v1, "GENERAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->GENERAL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 39
    new-instance v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const-string v1, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->LEFT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 44
    new-instance v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const-string v1, "CENTER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->CENTER:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 50
    new-instance v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const-string v1, "RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->RIGHT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 67
    new-instance v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const-string v1, "FILL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->FILL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 74
    new-instance v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const-string v1, "JUSTIFY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->JUSTIFY:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 82
    new-instance v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const-string v1, "CENTER_SELECTION"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->CENTER_SELECTION:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 94
    new-instance v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    const-string v1, "DISTRIBUTED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->DISTRIBUTED:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    .line 25
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    sget-object v10, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->GENERAL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    aput-object v10, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->LEFT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->CENTER:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->RIGHT:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->FILL:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->JUSTIFY:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->CENTER_SELECTION:Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->$VALUES:[Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/HorizontalAlignment;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->$VALUES:[Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/HorizontalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/HorizontalAlignment;

    return-object v0
.end method
