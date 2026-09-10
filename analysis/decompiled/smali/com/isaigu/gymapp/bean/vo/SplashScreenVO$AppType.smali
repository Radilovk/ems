.class public final enum Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;
.super Ljava/lang/Enum;
.source "SplashScreenVO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bean/vo/SplashScreenVO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

.field public static final enum TI:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

.field public static final enum XEMS:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    const-string v1, "XEMS"

    invoke-direct {v0, v1, v2, v2}, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;->XEMS:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    .line 23
    new-instance v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    const-string v1, "TI"

    invoke-direct {v0, v1, v3, v3}, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;->TI:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    sget-object v1, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;->XEMS:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;->TI:Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;->$VALUES:[Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;->type:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;->$VALUES:[Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/isaigu/gymapp/bean/vo/SplashScreenVO$AppType;->type:I

    return v0
.end method
