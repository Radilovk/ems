.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.super Ljava/lang/Object;
.source "ScaleScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Metric;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Layer;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Info;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Done;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Again;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Start;
    }
.end annotation


# static fields
.field static final H_KEY:Ljava/lang/String; = "h"

.field static final M_FAT:I = 0x0

.field static final M_KEY:[Ljava/lang/String;

.field static final M_MUSCLE:I = 0x1

.field static final M_VISC:I = 0x3

.field static final M_WATER:I = 0x2

.field static final M_WEIGHT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "muscle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "water"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "visc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "w"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;->M_KEY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 4

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 63
    :goto_8
    return-void

    .line 60
    :catch_9
    move-exception v0

    .line 61
    const-string v1, "ScaleScreen.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
