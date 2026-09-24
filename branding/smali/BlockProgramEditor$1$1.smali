.class Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$seedItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    # invokes: Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->seedBean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->access$100(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$working:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$working:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$working:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v0

    .line 63
    :cond_32
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    iget-object v1, v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$working:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$rebuild:[Ljava/lang/Runnable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 65
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1$1;-><init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method
