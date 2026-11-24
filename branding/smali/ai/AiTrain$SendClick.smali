.class final Lcom/isaigu/gymapp/ai/AiTrain$SendClick;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SendClick"
.end annotation


# instance fields
.field final f:Landroid/widget/EditText;

.field final live:Z


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .registers 3

    .prologue
    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1043
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;->f:Landroid/widget/EditText;

    .line 1044
    iput-boolean p2, p0, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;->live:Z

    .line 1045
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1049
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1050
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;->f:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$SendClick;->live:Z

    # invokes: Lcom/isaigu/gymapp/ai/AiTrain;->fire(Landroid/widget/EditText;Z)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiTrain;->access$200(Landroid/widget/EditText;Z)V

    .line 1051
    return-void
.end method
