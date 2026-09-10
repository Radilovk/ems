.class public final enum Lorg/apache/poi/ss/usermodel/VerticalAlignment;
.super Ljava/lang/Enum;
.source "VerticalAlignment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/VerticalAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum CENTER:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum DISTRIBUTED:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum JUSTIFY:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

.field public static final enum TOP:Lorg/apache/poi/ss/usermodel/VerticalAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 33
    new-instance v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v1, "CENTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->CENTER:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 38
    new-instance v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v1, "BOTTOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 53
    new-instance v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v1, "JUSTIFY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->JUSTIFY:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 68
    new-instance v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    const-string v1, "DISTRIBUTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/usermodel/VerticalAlignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->DISTRIBUTED:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    .line 24
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    sget-object v7, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->TOP:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v7, v1, v2

    sget-object v2, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->CENTER:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->BOTTOM:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->JUSTIFY:Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->$VALUES:[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/VerticalAlignment;
    .locals 1

    .line 24
    sget-object v0, Lorg/apache/poi/ss/usermodel/VerticalAlignment;->$VALUES:[Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/VerticalAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/VerticalAlignment;

    return-object v0
.end method
