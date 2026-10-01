.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V
    .registers 2

    .prologue
    .line 419
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    sget-object v1, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    iput-object v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->sex:Lcom/isaigu/gymapp/bean/Gender;

    .line 422
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderSex()V

    .line 423
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$6;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->renderGoal()V

    .line 424
    return-void
.end method
