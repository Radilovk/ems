.class Lcom/isaigu/gymapp/train/TrainViewHolder$2;
.super Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.source "TrainViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainViewHolder;->bindListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/TrainViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/train/TrainViewHolder;

    .line 136
    iput-object p1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$2;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$2;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wwww"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$2;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-static {v0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->access$300(Lcom/isaigu/gymapp/train/TrainViewHolder;)Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/train/TrainViewHolder$2;->this$0:Lcom/isaigu/gymapp/train/TrainViewHolder;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getData()Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/OperationUtil;->save(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 140
    return-void
.end method
