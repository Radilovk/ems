.class final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;
.super Ljava/lang/Object;
.source "MiFitnessLogImport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TreeTask"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final cb:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V
    .registers 3

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;->a:Landroid/app/Activity;

    .line 572
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;->cb:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 573
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 577
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scanLocal(Landroid/content/Context;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;->cb:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->hasAny()Z

    move-result v4

    if-eqz v4, :cond_19

    :goto_12
    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 579
    return-void

    .line 578
    :cond_19
    const/4 v0, 0x0

    goto :goto_12
.end method
