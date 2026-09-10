.class public Lcom/isaigu/gymapp/widget/MyButton;
.super Landroid/widget/Button;
.source "MyButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MyButton;->init()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MyButton;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/isaigu/gymapp/widget/MyButton;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .locals 1

    .line 31
    new-instance v0, Lcom/isaigu/gymapp/widget/MyButton$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/MyButton$1;-><init>(Lcom/isaigu/gymapp/widget/MyButton;)V

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/widget/MyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    return-void
.end method
