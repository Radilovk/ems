.class Landroid/support/v4/graphics/PaintCompatApi14;
.super Ljava/lang/Object;
.source "PaintCompatApi14.java"


# static fields
.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v4/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/PaintCompatApi14;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 10
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "string"    # Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 33
    .local v0, "length":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    return v1

    .line 38
    :cond_0
    const-string v3, "\udb3f\udffd"

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 39
    .local v4, "missingGlyphWidth":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 41
    .local v5, "width":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_1

    .line 43
    return v2

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->codePointCount(II)I

    move-result v6

    if-le v6, v1, :cond_4

    .line 49
    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v4

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    .line 50
    return v2

    .line 63
    :cond_2
    const/4 v6, 0x0

    .line 64
    .local v6, "sumWidth":F
    const/4 v7, 0x0

    .line 65
    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_3

    .line 66
    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 67
    .local v8, "charCount":I
    add-int v9, v7, v8

    invoke-virtual {p0, p1, v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    add-float/2addr v6, v9

    .line 68
    add-int/2addr v7, v8

    .line 69
    .end local v8    # "charCount":I
    goto :goto_0

    .line 70
    :cond_3
    cmpl-float v8, v5, v6

    if-ltz v8, :cond_4

    .line 71
    return v2

    .line 75
    .end local v6    # "sumWidth":F
    .end local v7    # "i":I
    :cond_4
    cmpl-float v6, v5, v4

    if-eqz v6, :cond_5

    .line 77
    return v1

    .line 82
    :cond_5
    invoke-static {}, Landroid/support/v4/graphics/PaintCompatApi14;->obtainEmptyRects()Landroid/support/v4/util/Pair;

    move-result-object v6

    .line 83
    .local v6, "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, v6, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v2, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 84
    iget-object v3, v6, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2, v0, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 85
    iget-object v2, v6, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, v6, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method private static obtainEmptyRects()Landroid/support/v4/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Landroid/support/v4/graphics/PaintCompatApi14;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 90
    .local v0, "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    if-nez v0, :cond_0

    .line 91
    new-instance v1, Landroid/support/v4/util/Pair;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 92
    sget-object v1, Landroid/support/v4/graphics/PaintCompatApi14;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v1, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 95
    iget-object v1, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 97
    :goto_0
    return-object v0
.end method
