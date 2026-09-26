.class Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contraChip(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

.field final synthetic val$chip:Landroid/widget/TextView;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;Ljava/lang/String;Landroid/widget/TextView;)V
    .registers 4

    .line 358
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->val$chip:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 360
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object p1, p1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->val$key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 361
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object p1, p1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->val$key:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_15
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->val$chip:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->contra:Ljava/util/Set;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->val$key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->styleContra(Landroid/widget/TextView;Z)V

    .line 364
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form$8;->this$0:Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->updateWarning()V

    .line 365
    return-void
.end method
