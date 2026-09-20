.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoneClickListener"
.end annotation


# instance fields
.field private final onDone:Ljava/lang/Runnable;

.field private final root:Landroid/widget/LinearLayout;

.field private final targetBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Landroid/widget/LinearLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->root:Landroid/widget/LinearLayout;

    .line 206
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->working:Ljava/util/ArrayList;

    .line 207
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->targetBlocks:Ljava/util/ArrayList;

    .line 208
    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->onDone:Ljava/lang/Runnable;

    .line 209
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 213
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->root:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->working:Ljava/util/ArrayList;

    # invokes: Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->collect(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->access$200(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 214
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->targetBlocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->targetBlocks:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->working:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$DoneClickListener;->onDone:Ljava/lang/Runnable;

    if-eqz p1, :cond_1a

    .line 217
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 219
    :cond_1a
    return-void
.end method
