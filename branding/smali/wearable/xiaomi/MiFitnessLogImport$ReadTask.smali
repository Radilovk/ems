.class final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;
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
    name = "ReadTask"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final cb:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

.field private final uris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;",
            ")V"
        }
    .end annotation

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;->a:Landroid/app/Activity;

    .line 570
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;->uris:Ljava/util/List;

    .line 571
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;->cb:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 572
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 576
    new-instance v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;-><init>()V

    .line 577
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;->uris:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 579
    :try_start_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;->uris:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_20} :catch_30

    move-result-object v0

    .line 581
    :try_start_21
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scanAny(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2b

    .line 583
    :try_start_24
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 577
    :goto_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 583
    :catchall_2b
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 584
    throw v3
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_30} :catch_30

    .line 585
    :catch_30
    move-exception v0

    goto :goto_27

    .line 588
    :cond_32
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;->a:Landroid/app/Activity;

    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;->cb:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->hasAny()Z

    move-result v0

    if-eqz v0, :cond_46

    move-object v0, v2

    :goto_3f
    invoke-direct {v3, v4, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 589
    return-void

    .line 588
    :cond_46
    const/4 v0, 0x0

    goto :goto_3f
.end method
