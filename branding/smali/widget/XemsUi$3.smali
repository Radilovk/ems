.class Lcom/isaigu/gymapp/widget/XemsUi$3;
.super Ljava/lang/Object;
.source "XemsUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;

.field final synthetic val$state:[Z

.field final synthetic val$sw:Landroid/view/View;


# direct methods
.method constructor <init>([ZLandroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;)V
    .registers 4

    .line 474
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$3;->val$state:[Z

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$3;->val$sw:Landroid/view/View;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsUi$3;->val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 477
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$3;->val$state:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    xor-int/lit8 v2, v2, 0x1

    aput-boolean v2, v0, v1

    .line 478
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsUi$3;->val$sw:Landroid/view/View;

    aget-boolean v0, v0, v1

    # invokes: Lcom/isaigu/gymapp/widget/XemsUi;->styleSwitch(Landroid/view/View;Z)V
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->access$200(Landroid/view/View;Z)V

    .line 479
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 480
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$3;->val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$3;->val$state:[Z

    aget-boolean v0, v0, v1

    invoke-interface {p1, v0}, Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;->onToggle(Z)V

    .line 481
    return-void
.end method
