.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;
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
    name = "MasterOpenListener"
.end annotation


# instance fields
.field private final activity:Lcom/isaigu/gymapp/BaseActivity;

.field private final manager:Lcom/isaigu/gymapp/train/TrainItemManager;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/TrainItemManager;)V
    .registers 3

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->activity:Lcom/isaigu/gymapp/BaseActivity;

    .line 252
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 253
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 257
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveTargetItem(Lcom/isaigu/gymapp/train/TrainItemManager;)Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object p1

    .line 258
    if-nez p1, :cond_11

    .line 259
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->activity:Lcom/isaigu/gymapp/BaseActivity;

    const v0, 0x7f0d011a

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->toast(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;I)V

    .line 260
    return-void

    .line 262
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MasterOpenListener;->activity:Lcom/isaigu/gymapp/BaseActivity;

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resolveActivity(Landroid/app/Activity;)Lcom/isaigu/gymapp/BaseActivity;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100(Landroid/app/Activity;)Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->show(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 263
    return-void
.end method
