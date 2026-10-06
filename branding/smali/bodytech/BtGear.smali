.class public final Lcom/isaigu/gymapp/bodytech/BtGear;
.super Ljava/lang/Object;
.source "BtGear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtGear$Choice;,
        Lcom/isaigu/gymapp/bodytech/BtGear$Test;,
        Lcom/isaigu/gymapp/bodytech/BtGear$Aus;,
        Lcom/isaigu/gymapp/bodytech/BtGear$Full;,
        Lcom/isaigu/gymapp/bodytech/BtGear$Replay;,
        Lcom/isaigu/gymapp/bodytech/BtGear$Program;
    }
.end annotation


# static fields
.field private static bypass:Z

.field public static freeSecond:Z


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
    .line 52
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 53
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    check-cast v0, Landroid/app/Activity;

    .line 56
    :goto_b
    return-object v0

    .line 54
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 56
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static open(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    :try_start_2
    sget-boolean v2, Lcom/isaigu/gymapp/bodytech/BtGear;->bypass:Z

    if-eqz v2, :cond_d

    .line 32
    const/4 v1, 0x0

    sput-boolean v1, Lcom/isaigu/gymapp/bodytech/BtGear;->bypass:Z

    .line 33
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/bodytech/BtGear;->freeSecond:Z

    .line 47
    :cond_c
    :goto_c
    return v0

    .line 36
    :cond_d
    if-eqz p0, :cond_c

    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_c

    if-eqz p1, :cond_c

    .line 37
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 38
    const/4 v3, 0x0

    sput-boolean v3, Lcom/isaigu/gymapp/bodytech/BtGear;->freeSecond:Z

    .line 39
    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtGear;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    .line 41
    if-eqz v3, :cond_c

    .line 42
    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->load(Landroid/content/Context;)V

    .line 43
    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;

    invoke-direct {v4, v3, p1, v2}, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->show()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_37} :catch_39

    move v0, v1

    .line 44
    goto :goto_c

    .line 45
    :catch_39
    move-exception v1

    .line 46
    const-string v2, "BtGear.open"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method
