.class Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->show(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onOff:[I

.field final synthetic val$rebuild:[Ljava/lang/Runnable;

.field final synthetic val$seedItem:Lcom/isaigu/gymapp/train/model/TrainItem;

.field final synthetic val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field final synthetic val$working:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;Landroid/app/Activity;[I[Ljava/lang/Runnable;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 7

    .line 46
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$working:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$onOff:[I

    iput-object p5, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$rebuild:[Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$seedItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 49
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 50
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_9
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$working:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_38

    .line 51
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v8, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$working:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$onOff:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$rebuild:[Ljava/lang/Runnable;

    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move v3, v7

    # invokes: Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->blockCard(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;
    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->access$000(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$activity:Landroid/app/Activity;

    .line 52
    if-nez v7, :cond_2c

    const/4 v3, 0x4

    goto :goto_2e

    :cond_2c
    const/16 v3, 0xc

    :goto_2e
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 51
    invoke-virtual {v8, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 54
    :cond_38
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$activity:Landroid/app/Activity;

    const-string v1, "+ \u0414\u043e\u0431\u0430\u0432\u0438 \u0431\u043b\u043e\u043a"

    const-string v2, "+ Add block"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;-><init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$activity:Landroid/app/Activity;

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$working:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$onOff:[I

    # invokes: Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->updateTotal(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->access$200(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V

    .line 75
    return-void
.end method
