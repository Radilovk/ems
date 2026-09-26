.class Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->field(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/dialog/ProgramSegment;ILjava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$changed:Ljava/lang/Runnable;

.field final synthetic val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

.field final synthetic val$st:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field final synthetic val$unit:Ljava/lang/String;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/ProgramSegment;ILcom/isaigu/gymapp/widget/XemsUi$Stepper;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    .line 179
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iput p2, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$which:I

    iput-object p3, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$st:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iput-object p4, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$unit:Ljava/lang/String;

    iput-object p5, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$changed:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$which:I

    # invokes: Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->set(Lcom/isaigu/gymapp/dialog/ProgramSegment;II)V
    invoke-static {v0, v1, p1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->access$300(Lcom/isaigu/gymapp/dialog/ProgramSegment;II)V

    .line 183
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$st:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$seg:Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$which:I

    # invokes: Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->get(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/BlockProgramEditor;->access$400(Lcom/isaigu/gymapp/dialog/ProgramSegment;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$unit:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$7;->val$changed:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 185
    return-void
.end method
