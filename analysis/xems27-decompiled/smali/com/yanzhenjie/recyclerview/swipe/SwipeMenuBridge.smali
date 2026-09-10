.class public final Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
.super Ljava/lang/Object;
.source "SwipeMenuBridge.java"


# instance fields
.field mAdapterPosition:I

.field private final mDirection:I

.field mImageView:Landroid/widget/ImageView;

.field private final mPosition:I

.field private final mSwipeSwitch:Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;

.field mTextView:Landroid/widget/TextView;

.field private final mViewRoot:Landroid/view/View;


# direct methods
.method constructor <init>(IILcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;Landroid/view/View;)V
    .locals 0
    .param p1, "direction"    # I
    .param p2, "position"    # I
    .param p3, "swipeSwitch"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;
    .param p4, "viewRoot"    # Landroid/view/View;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mDirection:I

    .line 45
    iput p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mPosition:I

    .line 46
    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mSwipeSwitch:Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;

    .line 47
    iput-object p4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mViewRoot:Landroid/view/View;

    .line 48
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mSwipeSwitch:Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;

    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;->smoothCloseMenu()V

    .line 103
    return-void
.end method

.method public getAdapterPosition()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mAdapterPosition:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mDirection:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mPosition:I

    return v0
.end method

.method public setBackgroundColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    .locals 1
    .param p1, "color"    # I

    .line 64
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mViewRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    return-object p0
.end method

.method public setBackgroundColorResource(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    .locals 1
    .param p1, "color"    # I

    .line 60
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->setBackgroundColor(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundDrawable(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    .locals 1
    .param p1, "resId"    # I

    .line 51
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mViewRoot:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-object p0
.end method

.method public setImage(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    .locals 1
    .param p1, "resId"    # I

    .line 69
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    move-result-object v0

    return-object v0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 73
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    return-object p0
.end method

.method public setText(I)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    .locals 1
    .param p1, "resId"    # I

    .line 79
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mViewRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->setText(Ljava/lang/String;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_0
    return-object p0
.end method
