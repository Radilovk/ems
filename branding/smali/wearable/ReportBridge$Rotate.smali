.class final Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;
.super Ljava/lang/Object;
.source "ReportBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ReportBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Rotate"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final portrait:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .registers 3

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;->a:Landroid/app/Activity;

    .line 257
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;->portrait:Z

    .line 258
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;->portrait:Z

    if-eqz v0, :cond_b

    .line 264
    const/4 v0, 0x7

    .line 263
    :goto_7
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_d

    .line 269
    :goto_a
    return-void

    .line 265
    :cond_b
    const/4 v0, 0x6

    goto :goto_7

    .line 266
    :catch_d
    move-exception v0

    .line 267
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
