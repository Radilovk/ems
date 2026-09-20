.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AddBlockListener"
.end annotation


# instance fields
.field private final rebuildUi:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;

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
.method constructor <init>(Ljava/util/ArrayList;Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            "Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;",
            ")V"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;->working:Ljava/util/ArrayList;

    .line 214
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;->seedItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 215
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;->rebuildUi:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;

    .line 216
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 221
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;->seedItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 222
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;->seedItem:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object p1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object p1

    goto :goto_16

    .line 223
    :cond_15
    const/4 p1, 0x0

    .line 220
    :goto_16
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;->working:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;->working:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 226
    iget v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    iput v1, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    .line 227
    iget v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    iput v1, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    .line 228
    iget v0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    iput v0, p1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    .line 230
    :cond_3c
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;->working:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$AddBlockListener;->rebuildUi:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RebuildUi;->run()V

    .line 232
    return-void
.end method
