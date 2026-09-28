.class public final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;
.super Landroid/app/Fragment;
.source "MiFitnessLogImport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Host"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 242
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method done()V
    .registers 2

    .prologue
    .line 282
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 285
    :goto_f
    return-void

    .line 283
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 263
    # getter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$100()Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    move-result-object v1

    .line 264
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$102(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 265
    const/16 v0, 0x5a9

    if-ne p1, v0, :cond_56

    const/4 v0, -0x1

    if-ne p2, v0, :cond_56

    if-eqz p3, :cond_56

    if-eqz v1, :cond_56

    .line 266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 268
    if-eqz v3, :cond_36

    .line 269
    const/4 v0, 0x0

    :goto_22
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_43

    .line 270
    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 272
    :cond_36
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 273
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_43
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V

    const-string v1, "xems-mifit-log"

    invoke-direct {v0, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 277
    :cond_56
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    .line 278
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 246
    if-nez p1, :cond_21

    .line 248
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const/16 v1, 0x5a9

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_21} :catch_22

    .line 258
    :cond_21
    :goto_21
    return-void

    .line 253
    :catch_22
    move-exception v0

    .line 254
    const-string v1, "xems"

    const-string v2, "MiFitnessLogImport.start"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    goto :goto_21
.end method
