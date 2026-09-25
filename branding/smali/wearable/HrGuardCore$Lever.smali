.class public final enum Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;
.super Ljava/lang/Enum;
.source "HrGuardCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/HrGuardCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Lever"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

.field public static final enum FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

.field public static final enum STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

.field public static final enum WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;


# direct methods
.method private static synthetic $values()[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-string v1, "STRENGTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-string v1, "WIDTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-string v1, "FREQ"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->$values()[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->$VALUES:[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    return-object v0
.end method

.method public static values()[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->$VALUES:[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v0}, [Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    return-object v0
.end method
