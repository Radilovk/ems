.class final Lcom/isaigu/gymapp/widget/XemsClientSync$Dossiers;
.super Ljava/lang/Object;
.source "XemsClientSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsClientSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dossiers"
.end annotation


# instance fields
.field final r:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Dossiers;->r:Lorg/json/JSONObject;

    .line 185
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsClientSync$Dossiers;->r:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsDossier;->applyPulled(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 191
    const-wide/16 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/widget/XemsClientSync;->lastPoll:J
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsClientSync;->access$502(J)J

    .line 192
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsClientSync;->poke()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 197
    :cond_10
    :goto_10
    return-void

    .line 194
    :catch_11
    move-exception v0

    .line 195
    const-string v1, "xems_sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dossiers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
