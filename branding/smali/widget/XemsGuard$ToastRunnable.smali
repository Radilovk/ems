.class final Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;
.super Ljava/lang/Object;
.source "XemsGuard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToastRunnable"
.end annotation


# instance fields
.field private final t:Ljava/lang/Throwable;

.field private final where:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;->where:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;->t:Ljava/lang/Throwable;

    .line 93
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 98
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/MainActivity;->getInstance()Lcom/isaigu/gymapp/MainActivity;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_58

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;->t:Ljava/lang/Throwable;

    if-eqz v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;->t:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;->t:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XEMS: \u0433\u0440\u0435\u0448\u043a\u0430 \u0432 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsGuard$ToastRunnable;->where:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    :cond_58
    :goto_58
    return-void

    .line 100
    :cond_59
    const-string v0, ""
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_31

    .line 103
    :catch_5c
    move-exception v0

    goto :goto_58
.end method
