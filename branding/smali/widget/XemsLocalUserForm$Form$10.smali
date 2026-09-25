.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->stepper(Ljava/lang/String;Ljava/lang/String;[IIII)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

.field final synthetic val$max:I

.field final synthetic val$min:I

.field final synthetic val$refresh:Ljava/lang/Runnable;

.field final synthetic val$step:I

.field final synthetic val$value:[I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;[IIIILjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 446
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$value:[I

    iput p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$step:I

    iput p4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$min:I

    iput p5, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$max:I

    iput-object p6, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$refresh:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$value:[I

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$value:[I

    aget v1, v1, v4

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$step:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$min:I

    iget v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$max:I

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->clamp(III)I

    move-result v1

    aput v1, v0, v4

    .line 449
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$10;->val$refresh:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 450
    return-void
.end method
