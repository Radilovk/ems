.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->addSport(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 439
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->val$code:I

    iput v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->miSport:I

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$9;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderOwner()V

    .line 443
    return-void
.end method
