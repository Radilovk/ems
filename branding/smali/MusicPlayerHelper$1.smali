.class Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$1;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->show(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Landroid/app/Activity;

.field final synthetic val$target:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$1;->val$host:Landroid/app/Activity;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$1;->val$target:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$1;->val$host:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$1;->val$target:Lcom/isaigu/gymapp/train/model/TrainItem;

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->openDialog(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$000(Landroid/app/Activity;Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 89
    return-void
.end method
