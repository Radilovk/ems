.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->photoBox()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3$1;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$3;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->pick(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsLocalAvatar$Picked;)V

    .line 260
    return-void
.end method
