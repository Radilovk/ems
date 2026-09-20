.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RebuildUi"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final root:Landroid/widget/LinearLayout;

.field private final seedItem:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private final working:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ")V"
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->activity:Landroid/app/Activity;

    .line 248
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->root:Landroid/widget/LinearLayout;

    .line 249
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->working:Ljava/util/ArrayList;

    .line 250
    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->seedItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 251
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 256
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->working:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 257
    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->root:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->working:Ljava/util/ArrayList;

    # invokes: Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->buildRow(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ILjava/lang/Runnable;)Landroid/view/View;
    invoke-static {v3, v2, v4, v1, p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->access$300(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;ILjava/lang/Runnable;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 259
    :cond_1f
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 260
    const v2, 0x7f0d014b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 261
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 262
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 263
    new-instance v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->working:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->seedItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-direct {v0, v2, v3, p0}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;-><init>(Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    return-void
.end method
