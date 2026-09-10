.class Lcom/isaigu/gymapp/BaseActivity$7;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/BaseActivity;->hideVirtualButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/BaseActivity;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/BaseActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 275
    iput-object p1, p0, Lcom/isaigu/gymapp/BaseActivity$7;->this$0:Lcom/isaigu/gymapp/BaseActivity;

    iput-object p2, p0, Lcom/isaigu/gymapp/BaseActivity$7;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 278
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/isaigu/gymapp/BaseActivity$7;->val$decorView:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 281
    :cond_0
    return-void
.end method
