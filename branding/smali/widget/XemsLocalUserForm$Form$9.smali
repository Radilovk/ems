.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;
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

.field final synthetic val$unit:Ljava/lang/String;

.field final synthetic val$val:Landroid/widget/TextView;

.field final synthetic val$value:[I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Landroid/widget/TextView;[ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 441
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->val$val:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->val$value:[I

    iput-object p4, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->val$unit:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->val$val:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->val$value:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->val$unit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method
