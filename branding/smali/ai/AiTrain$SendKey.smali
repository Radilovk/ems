.class final Lcom/isaigu/gymapp/ai/AiTrain$SendKey;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SendKey"
.end annotation


# instance fields
.field final f:Landroid/widget/EditText;

.field final live:Z


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .registers 3

    .prologue
    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;->f:Landroid/widget/EditText;

    .line 1335
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;->live:Z

    .line 1336
    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    .line 1340
    const/4 v0, 0x4

    if-eq p2, v0, :cond_16

    const/4 v0, 0x6

    if-eq p2, v0, :cond_16

    if-eqz p3, :cond_1f

    .line 1341
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1f

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    .line 1342
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;->f:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$SendKey;->live:Z

    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->fire(Landroid/widget/EditText;Z)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->access$100(Landroid/widget/EditText;Z)V

    .line 1343
    const/4 v0, 0x1

    .line 1345
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method
