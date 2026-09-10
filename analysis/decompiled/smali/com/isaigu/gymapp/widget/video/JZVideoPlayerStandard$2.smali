.class Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;
.super Ljava/lang/Object;
.source "JZVideoPlayerStandard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

.field final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 323
    .local v0, "index":I
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->getCurrentPositionWhenPlaying()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->onStatePreparingChangingUrl(IJ)V

    .line 324
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarity:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->dataSourceObjects:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget v4, v4, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/video/JZUtils;->getKeyFromDataSource([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget v2, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->currentUrlMapIndex:I

    if-ne v1, v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "#fff85959"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_2

    .line 333
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard$2;->this$0:Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/video/JZVideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 335
    :cond_2
    return-void
.end method
