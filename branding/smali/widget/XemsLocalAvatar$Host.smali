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

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method done()V
    .registers 2

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 99
    :goto_f
    return-void

    .line 97
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    # getter for: Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->access$000()Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    move-result-object v0

    .line 80
    const/4 v1, 0x0

    # setter for: Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->access$002(Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;)Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;

    .line 82
    const/16 v1, 0x5a7

    if-ne p1, v1, :cond_2d

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2d

    if-eqz p3, :cond_2d

    :try_start_14
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2d

    .line 83
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->load(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_2d

    .line 85
    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;->onPicked(Landroid/graphics/Bitmap;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_2d} :catch_31

    .line 91
    :cond_2d
    :goto_2d
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->done()V

    .line 92
    return-void

    .line 88
    :catch_31
    move-exception v0

    .line 89
    const-string v1, "xems"

    const-string v2, "XemsLocalAvatar.result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    if-nez p1, :cond_20

    .line 65
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x5a7

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_20} :catch_21

    .line 74
    :cond_20
    :goto_20
    return-void

    .line 69
    :catch_21
    move-exception v0

    .line 70
    const-string v1, "xems"

    const-string v2, "XemsLocalAvatar.start"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Host;->done()V

    goto :goto_20
.end method
