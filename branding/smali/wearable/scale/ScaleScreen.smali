.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.super Ljava/lang/Object;
.source "ScaleScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;,
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


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 4

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$View_;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 49
    :goto_8
    return-void

    .line 46
    :catch_9
    move-exception v0

    .line 47
    const-string v1, "ScaleScreen.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
