.class public Lcom/isaigu/gymapp/widget/LineEditText;
.super Landroid/widget/EditText;
.source "LineEditText.java"


# instance fields
.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/LineEditText;->paint:Landroid/graphics/Paint;

    .line 19
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/LineEditText;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 26
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 30
    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/LineEditText;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/LineEditText;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/LineEditText;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/isaigu/gymapp/widget/LineEditText;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 31
    return-void
.end method
