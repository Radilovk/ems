.class public final Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;
.super Landroid/app/Fragment;
.source "XemsLocalAvatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Host"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method done()V
    .registers 2

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    .line 97
    goto :goto_11

    .line 96
    :catchall_10
    move-exception v0

    .line 98
    :goto_11
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 78
    # getter for: Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->access$000()Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    move-result-object v0

    .line 79
    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->access$002(Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;)Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    .line 81
    const/16 v1, 0x5a7

    if-ne p1, v1, :cond_37

    const/4 p1, -0x1

    if-ne p2, p1, :cond_37

    if-eqz p3, :cond_37

    :try_start_14
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_37

    if-eqz v0, :cond_37

    .line 82
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->load(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 83
    if-eqz p1, :cond_37

    .line 84
    invoke-interface {v0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;->onPicked(Landroid/graphics/Bitmap;)V
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_2e

    goto :goto_37

    .line 87
    :catchall_2e
    move-exception p1

    .line 88
    const-string p2, "xems"

    const-string p3, "XemsLocalAvatar.result"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 89
    :cond_37
    :goto_37
    nop

    .line 90
    :goto_38
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->done()V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 61
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    if-nez p1, :cond_2c

    .line 64
    :try_start_5
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x5a7

    invoke-virtual {p0, p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    .line 71
    goto :goto_2c

    .line 68
    :catchall_21
    move-exception p1

    .line 69
    const-string v0, "xems"

    const-string v1, "XemsLocalAvatar.start"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->done()V

    .line 73
    :cond_2c
    :goto_2c
    return-void
.end method
