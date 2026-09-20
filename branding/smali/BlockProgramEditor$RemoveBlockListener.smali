.class final Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;
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
    name = "RemoveBlockListener"
.end annotation


# instance fields
.field private final index:I

.field private final rebuild:Ljava/lang/Runnable;

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
.method constructor <init>(Ljava/util/ArrayList;ILjava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;->working:Ljava/util/ArrayList;

    .line 229
    iput p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;->index:I

    .line 230
    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;->rebuild:Ljava/lang/Runnable;

    .line 231
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 235
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;->working:Ljava/util/ArrayList;

    iget v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;->index:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 236
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$RemoveBlockListener;->rebuild:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 237
    return-void
.end method
