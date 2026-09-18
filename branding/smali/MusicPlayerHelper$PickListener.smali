.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PickListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PickListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 329
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveHostActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    .line 330
    if-nez p1, :cond_d

    .line 331
    const p1, 0x7f0d010b

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 332
    return-void

    .line 334
    :cond_d
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHostActivity(Landroid/app/Activity;)V

    .line 336
    :try_start_10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$102(Z)Z

    .line 342
    const/16 v1, 0x4255

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_33

    .line 346
    goto :goto_3e

    .line 343
    :catchall_33
    move-exception p1

    .line 344
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->pickingFile:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$102(Z)Z

    .line 345
    const p1, 0x7f0d0113

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 347
    :goto_3e
    return-void
.end method
