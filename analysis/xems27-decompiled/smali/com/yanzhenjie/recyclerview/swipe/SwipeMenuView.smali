.class public Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
.super Landroid/widget/LinearLayout;
.source "SwipeMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAdapterVIewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field private mDirection:I

.field private mItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

.field private mSwipeSwitch:Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method private createIcon(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "item"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    .line 104
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    return-object v0
.end method

.method private createTitle(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)Landroid/widget/TextView;
    .locals 5
    .param p1, "item"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    .line 110
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getTextSize()I

    move-result v1

    .line 114
    .local v1, "textSize":I
    if-lez v1, :cond_0

    .line 115
    const/4 v2, 0x2

    int-to-float v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getTitleColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 117
    .local v2, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getTextAppearance()I

    move-result v3

    .line 120
    .local v3, "textAppearance":I
    if-eqz v3, :cond_2

    .line 121
    invoke-static {v0, v3}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    .line 123
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_3

    .line 124
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    :cond_3
    return-object v0
.end method


# virtual methods
.method public bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "adapterVIewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 100
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mAdapterVIewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 101
    return-void
.end method

.method public createMenu(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;I)V
    .locals 8
    .param p1, "swipeMenu"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;
    .param p2, "swipeSwitch"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;
    .param p3, "swipeMenuItemClickListener"    # Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;
    .param p4, "direction"    # I

    .line 61
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->removeAllViews()V

    .line 63
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mSwipeSwitch:Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;

    .line 64
    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    .line 65
    iput p4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mDirection:I

    .line 67
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;

    .line 71
    .local v2, "item":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getWeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v4, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 75
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 76
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->addView(Landroid/view/View;)V

    .line 82
    new-instance v5, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    iget v6, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mDirection:I

    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mSwipeSwitch:Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;

    invoke-direct {v5, v6, v1, v7, v4}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;-><init>(IILcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;Landroid/view/View;)V

    .line 83
    .local v5, "menuBridge":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 86
    invoke-direct {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->createIcon(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)Landroid/widget/ImageView;

    move-result-object v6

    .line 87
    .local v6, "iv":Landroid/widget/ImageView;
    iput-object v6, v5, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mImageView:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    .end local v6    # "iv":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 92
    invoke-direct {p0, v2}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->createTitle(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;)Landroid/widget/TextView;

    move-result-object v6

    .line 93
    .local v6, "tv":Landroid/widget/TextView;
    iput-object v6, v5, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mTextView:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    .end local v2    # "item":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItem;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "parent":Landroid/widget/LinearLayout;
    .end local v5    # "menuBridge":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    .end local v6    # "tv":Landroid/widget/TextView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mSwipeSwitch:Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;

    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeSwitch;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;

    .line 132
    .local v0, "menuBridge":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mAdapterVIewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iput v1, v0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;->mAdapterPosition:I

    .line 133
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->mItemClickListener:Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;

    invoke-interface {v1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuItemClickListener;->onItemClick(Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;)V

    .line 135
    .end local v0    # "menuBridge":Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuBridge;
    :cond_0
    return-void
.end method
