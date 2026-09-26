.class Lcom/isaigu/gymapp/widget/XemsLocalSection$4;
.super Ljava/lang/Object;
.source "XemsLocalSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalSection;->build(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .line 135
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 137
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;->val$root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalSection;->confirmFinish(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->access$300(Landroid/app/Activity;Landroid/view/View;)V

    .line 138
    return-void
.end method
