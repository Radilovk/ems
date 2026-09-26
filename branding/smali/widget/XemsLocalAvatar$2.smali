.class Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;
.super Ljava/lang/Object;
.source "XemsLocalAvatar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->bindCard(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$w:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$w:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->activity(Landroid/content/Context;)Landroid/app/Activity;
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->access$100(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$w:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_1d

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 277
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$w:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$2;->val$w:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->showCard(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 279
    :cond_1d
    return-void
.end method
