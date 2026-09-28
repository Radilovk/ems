.class final Lcom/isaigu/gymapp/widget/XemsDossier$PushStart;
.super Ljava/lang/Object;
.source "XemsDossier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsDossier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PushStart"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 90
    # getter for: Lcom/isaigu/gymapp/widget/XemsDossier;->pushing:Z
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$000()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    # setter for: Lcom/isaigu/gymapp/widget/XemsDossier;->queued:Z
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$102(Z)Z

    .line 104
    :cond_a
    :goto_a
    return-void

    .line 94
    :cond_b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->token()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 98
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->collect()Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 102
    # setter for: Lcom/isaigu/gymapp/widget/XemsDossier;->pushing:Z
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsDossier;->access$002(Z)Z

    .line 103
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;

    invoke-direct {v3, v0, v1}, Lcom/isaigu/gymapp/widget/XemsDossier$PushRun;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "xems-dossier-push"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_a
.end method
