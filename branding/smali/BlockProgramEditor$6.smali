.class Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->blockCard(Landroid/app/Activity;Ljava/util/ArrayList;I[ILjava/lang/Runnable;Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onOff:[I

.field final synthetic val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

.field final synthetic val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field final synthetic val$title:Landroid/widget/TextView;

.field final synthetic val$working:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/ProgramSegment;[ILandroid/widget/TextView;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$onOff:[I

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$title:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iput-object p5, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$working:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$onOff:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$onOff:[I

    aget v2, v2, v7

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    .line 151
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$title:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v3, v3, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u0446\u0438\u043a\u044a\u043b\u0430 \u00b7 "

    const-string v4, " cycles \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, v0, 0x3c

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$working:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$onOff:[I

    # invokes: Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->updateTotal(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->access$200(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/util/ArrayList;[I)V

    .line 154
    return-void
.end method
