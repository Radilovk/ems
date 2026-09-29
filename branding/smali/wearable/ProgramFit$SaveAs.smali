.class final Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;
.super Ljava/lang/Object;
.source "ProgramFit.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/ProgramFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SaveAs"
.end annotation


# instance fields
.field private final holder:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;->holder:Ljava/lang/Object;

    .line 767
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 6

    .prologue
    .line 772
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    .line 773
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ProgramFit$SaveAs;->holder:Ljava/lang/Object;

    check-cast v1, Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    .line 774
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ProgramFit;->forSave(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    .line 775
    instance-of v1, v2, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v1, :cond_2c

    if-eqz v3, :cond_2c

    .line 776
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 777
    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    move-object v1, v0

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->save(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_26

    .line 778
    const/4 v1, 0x1

    .line 783
    :goto_25
    return v1

    .line 780
    :catch_26
    move-exception v1

    .line 781
    const-string v2, "ProgramFit.saveAs"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 783
    :cond_2c
    const/4 v1, 0x0

    goto :goto_25
.end method
