.class Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->blockCard(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I

.field final synthetic val$rebuild:Ljava/lang/Runnable;

.field final synthetic val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

.field final synthetic val$working:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ILcom/isaigu/gymapp/dialog/ProgramSegment;Ljava/lang/Runnable;)V
    .registers 5

    .line 124
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;->val$working:Ljava/util/ArrayList;

    iput p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;->val$index:I

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;->val$rebuild:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 127
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;->val$working:Ljava/util/ArrayList;

    iget v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;->val$index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->deserialize(Ljava/lang/String;)Lcom/isaigu/gymapp/dialog/ProgramSegment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 128
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$4;->val$rebuild:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 129
    return-void
.end method
