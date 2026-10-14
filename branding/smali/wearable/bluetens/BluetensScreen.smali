.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.super Ljava/lang/Object;
.source "BluetensScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Info;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryChip;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickLibrary;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoaded;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$BackKey;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Minimize;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveSave;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveKind;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Dismissed;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$CloseLinks;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$HideWarn;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tick;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMinutes;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Edited;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NewMine;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$EditMine;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickMine;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$PickProgram;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Go;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$StartScan;,
        Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;
    }
.end annotation


# static fields
.field static final LIVE_A:Ljava/lang/String; = "XLIVA"

.field static final LIVE_B:Ljava/lang/String; = "XLIVB"

.field static final MAX_PADS:I = 0x2

.field static final PREFS:Ljava/lang/String; = "xems_bluetens"

.field static current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowed()Z
    .registers 1

    .prologue
    .line 58
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->unlocked()Z

    move-result v0

    return v0
.end method

.method static bg()Z
    .registers 1

    .prologue
    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    return v0
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->allowed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 82
    :goto_6
    return-void

    .line 66
    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 67
    if-eqz v0, :cond_2b

    iget-boolean v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->closed:Z

    if-nez v1, :cond_2b

    .line 68
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    if-ne v1, p0, :cond_24

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_24

    .line 69
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->restore()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_6

    .line 79
    :catch_1d
    move-exception v0

    .line 80
    const-string v1, "BluetensScreen.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 73
    :cond_24
    :try_start_24
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2b} :catch_38

    .line 77
    :cond_2b
    :goto_2b
    :try_start_2b
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 78
    sget-object v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;->current:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->show()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_37} :catch_1d

    goto :goto_6

    .line 74
    :catch_38
    move-exception v0

    goto :goto_2b
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
