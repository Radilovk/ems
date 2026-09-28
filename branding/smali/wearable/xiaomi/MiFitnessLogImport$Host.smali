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
    .line 524
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method done()V
    .registers 2

    .prologue
    .line 606
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

    .line 609
    :goto_f
    return-void

    .line 607
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

    .line 562
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 563
    # getter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$200()Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    move-result-object v2

    .line 564
    # setter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$202(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 565
    const/16 v3, 0x5aa

    if-ne p1, v3, :cond_69

    .line 566
    if-ne p2, v4, :cond_28

    if-eqz p3, :cond_28

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 567
    :goto_1b
    if-nez v0, :cond_2a

    .line 568
    if-eqz v2, :cond_24

    .line 569
    const-string v0, "cancelled"

    invoke-interface {v2, v1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;->onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V

    .line 583
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    .line 602
    :goto_27
    return-void

    :cond_28
    move-object v0, v1

    .line 566
    goto :goto_1b

    .line 572
    :cond_2a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 574
    :try_start_2e
    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 575
    const-string v3, "xems_mifit_log"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "tree"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_4e} :catch_60

    .line 579
    :goto_4e
    if-eqz v2, :cond_24

    .line 580
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;

    invoke-direct {v3, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V

    const-string v1, "xems-mifit-tree"

    invoke-direct {v0, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_24

    .line 576
    :catch_60
    move-exception v0

    .line 577
    const-string v3, "xems"

    const-string v4, "MiFitnessLogImport.persist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 586
    :cond_69
    if-eqz v2, :cond_76

    if-ne p1, v5, :cond_71

    if-ne p2, v4, :cond_71

    if-nez p3, :cond_76

    .line 587
    :cond_71
    const-string v3, "cancelled"

    invoke-interface {v2, v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;->onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V

    .line 589
    :cond_76
    if-ne p1, v5, :cond_bd

    if-ne p2, v4, :cond_bd

    if-eqz p3, :cond_bd

    if-eqz v2, :cond_bd

    .line 590
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 592
    if-eqz v3, :cond_9d

    .line 593
    :goto_89
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_aa

    .line 594
    invoke-virtual {v3, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 596
    :cond_9d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 597
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_aa
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V

    const-string v1, "xems-mifit-log"

    invoke-direct {v0, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 601
    :cond_bd
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    goto/16 :goto_27
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 527
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 528
    if-nez p1, :cond_4b

    # getter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pendingFolder:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$100()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 530
    :try_start_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_26

    .line 532
    const-string v1, "android.provider.extra.INITIAL_URI"

    const-string v2, "com.android.externalstorage.documents"

    const-string v3, "primary:Download/wearablelog"

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 535
    :cond_26
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 536
    const/16 v1, 0x5aa

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_30} :catch_31

    .line 558
    :cond_30
    :goto_30
    return-void

    .line 537
    :catch_31
    move-exception v0

    .line 538
    const-string v1, "xems"

    const-string v2, "MiFitnessLogImport.tree"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    # getter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$200()Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    move-result-object v0

    .line 540
    # setter for: Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->access$202(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 541
    if-eqz v0, :cond_47

    .line 542
    const-string v1, "no folder"

    invoke-interface {v0, v4, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;->onFound(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;Ljava/lang/String;)V

    .line 544
    :cond_47
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    goto :goto_30

    .line 546
    :cond_4b
    if-nez p1, :cond_30

    .line 548
    :try_start_4d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    const/16 v1, 0x5a9

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_69} :catch_6a

    goto :goto_30

    .line 553
    :catch_6a
    move-exception v0

    .line 554
    const-string v1, "xems"

    const-string v2, "MiFitnessLogImport.start"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 555
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;->done()V

    goto :goto_30
.end method
