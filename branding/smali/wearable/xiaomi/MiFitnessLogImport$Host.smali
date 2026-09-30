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
    .line 546
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method done()V
    .registers 2

    .prologue
    .line 629
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

    .line 632
    :goto_f
    return-void

    .line 630
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .prologue
    const/16 v5, 0x5a9

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 584
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 585
    # getter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$200()Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    move-result-object v2

    .line 586
    # setter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$202(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 587
    const/16 v3, 0x5aa

    if-ne p1, v3, :cond_8e

    .line 588
    if-ne p2, v4, :cond_28

    if-eqz p3, :cond_28

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 589
    :goto_1b
    if-nez v0, :cond_2a

    .line 590
    if-eqz v2, :cond_24

    .line 591
    const-string v0, "cancelled"

    invoke-interface {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;->onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V

    .line 606
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    .line 625
    :goto_27
    return-void

    :cond_28
    move-object v0, v1

    .line 588
    goto :goto_1b

    .line 594
    :cond_2a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 596
    :try_start_2e
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 597
    const-string v3, "xems_mifit_log"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "tree"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder granted and kept: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->log(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_64} :catch_76

    .line 602
    :goto_64
    if-eqz v2, :cond_24

    .line 603
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;

    invoke-direct {v3, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V

    const-string v1, "xems-mifit-tree"

    invoke-direct {v0, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_24

    .line 599
    :catch_76
    move-exception v0

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder grant not kept: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->log(Ljava/lang/String;)V

    goto :goto_64

    .line 609
    :cond_8e
    if-eqz v2, :cond_9b

    if-ne p1, v5, :cond_96

    if-ne p2, v4, :cond_96

    if-nez p3, :cond_9b

    .line 610
    :cond_96
    const-string v3, "cancelled"

    invoke-interface {v2, v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;->onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V

    .line 612
    :cond_9b
    if-ne p1, v5, :cond_e2

    if-ne p2, v4, :cond_e2

    if-eqz p3, :cond_e2

    if-eqz v2, :cond_e2

    .line 613
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 614
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 615
    if-eqz v3, :cond_c2

    .line 616
    :goto_ae
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_cf

    .line 617
    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 619
    :cond_c2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_cf

    .line 620
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_cf
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V

    const-string v1, "xems-mifit-log"

    invoke-direct {v0, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 624
    :cond_e2
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    goto/16 :goto_27
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 549
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 550
    if-nez p1, :cond_4b

    # getter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pendingFolder:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$100()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 552
    :try_start_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 553
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_26

    .line 554
    const-string v1, "android.provider.extra.INITIAL_URI"

    const-string v2, "com.android.externalstorage.documents"

    const-string v3, "primary:Download/wearablelog"

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 557
    :cond_26
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    const/16 v1, 0x5aa

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_30} :catch_31

    .line 580
    :cond_30
    :goto_30
    return-void

    .line 559
    :catch_31
    move-exception v0

    .line 560
    const-string v1, "xems"

    const-string v2, "MiFitnessLogImport.tree"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    # getter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$200()Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    move-result-object v0

    .line 562
    # setter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$202(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 563
    if-eqz v0, :cond_47

    .line 564
    const-string v1, "no folder"

    invoke-interface {v0, v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;->onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V

    .line 566
    :cond_47
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    goto :goto_30

    .line 568
    :cond_4b
    if-nez p1, :cond_30

    .line 570
    :try_start_4d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 574
    const/16 v1, 0x5a9

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_69} :catch_6a

    goto :goto_30

    .line 575
    :catch_6a
    move-exception v0

    .line 576
    const-string v1, "xems"

    const-string v2, "MiFitnessLogImport.start"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 577
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    goto :goto_30
.end method
