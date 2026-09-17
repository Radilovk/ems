.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayListener;
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
    name = "PlayListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 288
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_d

    .line 289
    const p1, 0x7f0d0112

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 290
    return-void

    .line 292
    :cond_d
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()Landroid/app/Activity;

    move-result-object p1

    .line 293
    if-nez p1, :cond_1a

    .line 294
    const p1, 0x7f0d010b

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 295
    return-void

    .line 297
    :cond_1a
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->selectedUri:Landroid/net/Uri;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300()Landroid/net/Uri;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->readSensitivity()I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startPlayer(Landroid/app/Activity;Landroid/net/Uri;I)V

    .line 298
    return-void
.end method
