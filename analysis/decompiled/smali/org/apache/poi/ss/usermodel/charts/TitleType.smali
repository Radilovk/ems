.class public final enum Lorg/apache/poi/ss/usermodel/charts/TitleType;
.super Ljava/lang/Enum;
.source "TitleType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/poi/ss/usermodel/charts/TitleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/charts/TitleType;

.field public static final enum CELL_REFERENCE:Lorg/apache/poi/ss/usermodel/charts/TitleType;

.field public static final enum STRING:Lorg/apache/poi/ss/usermodel/charts/TitleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/charts/TitleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->STRING:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    .line 27
    new-instance v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;

    const-string v1, "CELL_REFERENCE"

    invoke-direct {v0, v1, v3}, Lorg/apache/poi/ss/usermodel/charts/TitleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->CELL_REFERENCE:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/poi/ss/usermodel/charts/TitleType;

    sget-object v1, Lorg/apache/poi/ss/usermodel/charts/TitleType;->STRING:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/poi/ss/usermodel/charts/TitleType;->CELL_REFERENCE:Lorg/apache/poi/ss/usermodel/charts/TitleType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->$VALUES:[Lorg/apache/poi/ss/usermodel/charts/TitleType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/charts/TitleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;

    return-object v0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/charts/TitleType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/apache/poi/ss/usermodel/charts/TitleType;->$VALUES:[Lorg/apache/poi/ss/usermodel/charts/TitleType;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/charts/TitleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/charts/TitleType;

    return-object v0
.end method
