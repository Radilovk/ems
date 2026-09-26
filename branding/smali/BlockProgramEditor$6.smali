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
    .registers 8

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$onOff:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    mul-int v0, v0, v3

    .line 151
    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$6;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v5, v5, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " \u0446\u0438\u043a\u044a\u043b\u0430 \u00b7 "

    const-string v6, " cycles \u00b7 "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit8 v6, v0, 0x3c

    .line 152
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "%d:%02d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
