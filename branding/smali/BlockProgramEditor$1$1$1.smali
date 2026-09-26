.class Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1$1;
.super Ljava/lang/Object;
.source "BlockProgramEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1$1;->this$1:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1$1;->this$1:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1$1;->this$0:Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;

    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/BlockProgramEditor$1;->val$sheet:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->scroll:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 69
    return-void
.end method
