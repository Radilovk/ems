.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.super Ljava/lang/Object;
.source "BluetensScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    }
.end annotation


# static fields
.field static final MAX_PADS:I = 0x2

.field static final PREFS:Ljava/lang/String; = "xems_bluetens"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bg()Z
    .registers 1

    .prologue
    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    return v0
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 41
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    .line 45
    :goto_8
    return-void

    .line 42
    :catch_9
    move-exception v0

    .line 43
    const-string v1, "BluetensScreen.open"

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
