.class public final Lcom/isaigu/gymapp/bodytech/BtGear;
.super Ljava/lang/Object;
.source "BtGear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtGear$Choice;,
        Lcom/isaigu/gymapp/bodytech/BtGear$Test;,
        Lcom/isaigu/gymapp/bodytech/BtGear$Replay;,
        Lcom/isaigu/gymapp/bodytech/BtGear$Program;
    }
.end annotation


# static fields
.field private static bypass:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 21
    sput-boolean p0, Lcom/isaigu/gymapp/bodytech/BtGear;->bypass:Z

    return p0
.end method

.method static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 48
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 49
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    check-cast v0, Landroid/app/Activity;

    .line 52
    :goto_b
    return-object v0

    .line 50
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 52
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static open(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 29
    :try_start_1
    sget-boolean v1, Lcom/isaigu/gymapp/bodytech/BtGear;->bypass:Z

    if-eqz v1, :cond_9

    .line 30
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/bodytech/BtGear;->bypass:Z

    .line 43
    :cond_8
    :goto_8
    return v0

    .line 33
    :cond_9
    if-eqz p0, :cond_8

    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    .line 34
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 35
    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtGear;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 37
    if-eqz v2, :cond_8

    .line 38
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtSettings;->load(Landroid/content/Context;)V

    .line 39
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;

    invoke-direct {v3, v2, p1, v1}, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->show()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_32

    .line 40
    const/4 v0, 0x1

    goto :goto_8

    .line 41
    :catch_32
    move-exception v1

    .line 42
    const-string v2, "BtGear.open"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method
