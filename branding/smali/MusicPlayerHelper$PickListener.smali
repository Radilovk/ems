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

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 206
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000()Landroid/app/Activity;

    move-result-object p1

    .line 207
    if-nez p1, :cond_d

    .line 208
    const p1, 0x7f0d010b

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 209
    return-void

    .line 212
    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const/16 v1, 0x4255

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_24

    .line 218
    goto :goto_2b

    .line 216
    :catchall_24
    move-exception p1

    .line 217
    const p1, 0x7f0d0113

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 219
    :goto_2b
    return-void
.end method
