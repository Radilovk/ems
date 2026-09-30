.class final Lcom/isaigu/gymapp/wearable/ReportBridge$Start;
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
    name = "Start"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field final i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;->a:Landroid/app/Activity;

    .line 347
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;->i:Landroid/content/Intent;

    .line 348
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;->i:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 357
    :goto_7
    return-void

    .line 354
    :catch_8
    move-exception v0

    .line 355
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method
