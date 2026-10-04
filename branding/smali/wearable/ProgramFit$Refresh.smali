.class final Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;
.super Ljava/lang/Object;
.source "ProgramFit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ProgramFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Refresh"
.end annotation


# instance fields
.field private final it:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private final send:Z


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;Z)V
    .registers 3

    .prologue
    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;->it:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 687
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;->send:Z

    .line 688
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 693
    :try_start_0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;->send:Z

    if-eqz v0, :cond_9

    .line 694
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;->it:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 696
    :cond_9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$Refresh;->it:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 699
    :goto_e
    return-void

    .line 697
    :catch_f
    move-exception v0

    goto :goto_e
.end method
