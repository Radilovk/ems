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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;->layers:Landroid/graphics/drawable/LayerDrawable;

    .line 104
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 16

    .line 108
    sub-int/2addr p4, p2

    .line 109
    sub-int/2addr p5, p3

    .line 110
    if-lez p4, :cond_29

    if-gtz p5, :cond_7

    goto :goto_29

    .line 113
    :cond_7
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    const p3, 0x3ee147ae    # 0.44f

    mul-float p2, p2, p3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 114
    sub-int/2addr p4, p2

    div-int/lit8 v2, p4, 0x2

    .line 115
    sub-int/2addr p5, p2

    div-int/lit8 v3, p5, 0x2

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayIconInset;->layers:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    sub-int v4, p4, v2

    sub-int v5, p5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 118
    return-void

    .line 111
    :cond_29
    :goto_29
    return-void
.end method
