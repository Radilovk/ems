.class final Lcom/isaigu/gymapp/wearable/XemsAccess$Step;
.super Ljava/lang/Object;
.source "XemsAccess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/XemsAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final polls:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    .line 69
    iput p2, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->polls:I

    .line 70
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->polls:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_14

    .line 76
    :cond_f
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$002(Z)Z

    .line 93
    :goto_13
    return-void

    .line 79
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 80
    # getter for: Lcom/isaigu/gymapp/wearable/XemsAccess;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->polls:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;-><init>(Landroid/app/Activity;I)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_13

    .line 89
    :catch_31
    move-exception v0

    .line 90
    # setter for: Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$002(Z)Z

    .line 91
    const-string v1, "XemsAccess.step"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 83
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/XemsAccess;->missingRuntime(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    array-length v1, v0

    if-lez v1, :cond_6a

    .line 85
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsAccess$Step;->a:Landroid/app/Activity;

    const/16 v2, 0x5753

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 86
    const-string v1, "perm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at once"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_6a
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/XemsAccess;->running:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/XemsAccess;->access$002(Z)Z
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_6e} :catch_31

    goto :goto_13
.end method
