.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayIconInset"
.end annotation


# instance fields
.field private final layers:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/LayerDrawable;)V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;->layers:Landroid/graphics/drawable/LayerDrawable;

    .line 101
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 17

    .prologue
    .line 105
    sub-int v4, p4, p2

    .line 106
    sub-int v5, p5, p3

    .line 107
    if-lez v4, :cond_8

    if-gtz v5, :cond_9

    .line 115
    :cond_8
    :goto_8
    return-void

    .line 110
    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ee147ae    # 0.44f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 111
    sub-int v0, v4, v6

    div-int/lit8 v2, v0, 0x2

    .line 112
    sub-int v0, v5, v6

    div-int/lit8 v3, v0, 0x2

    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;->layers:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    sub-int/2addr v4, v6

    sub-int/2addr v4, v2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_8
.end method
