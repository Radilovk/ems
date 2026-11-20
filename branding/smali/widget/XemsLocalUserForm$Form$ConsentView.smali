.class final Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentView;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsentView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentView;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentView;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentView;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$ConsentView;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->editing:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    :goto_10
    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalConsent;->view(Landroid/app/Activity;J)V

    .line 343
    return-void

    .line 342
    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_10
.end method
