.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OpenListener;
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
    name = "OpenListener"
.end annotation


# instance fields
.field private final item:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OpenListener;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 188
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 193
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->resolveActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 194
    instance-of v0, p1, Lcom/isaigu/gymapp/BaseActivity;

    if-nez v0, :cond_d

    .line 195
    return-void

    .line 197
    :cond_d
    check-cast p1, Lcom/isaigu/gymapp/BaseActivity;

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$OpenListener;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->show(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 199
    goto :goto_16

    .line 198
    :catchall_15
    move-exception p1

    .line 200
    :goto_16
    return-void
.end method
