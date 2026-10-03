.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShareHtml"
.end annotation


# instance fields
.field final fig:Landroid/view/View;

.field final full:Z

.field final name:Ljava/lang/String;

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Landroid/view/View;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 2622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2623
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2624
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->fig:Landroid/view/View;

    .line 2625
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->name:Ljava/lang/String;

    .line 2626
    iput-boolean p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->full:Z

    .line 2627
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 2631
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2634
    :try_start_4
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->fig:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_65

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->fig:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_65

    .line 2635
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->fig:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->fig:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2637
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->fig:Landroid/view/View;

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_30} :catch_62

    :goto_30
    move-object v7, v0

    .line 2642
    :goto_31
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_42

    .line 2643
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2644
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    .line 2646
    :cond_42
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->hist:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->at:I

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->male:Z

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v5, v5, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->age:I

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v6, v6, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->heightCm:I

    iget-boolean v8, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->full:Z

    invoke-static/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->html(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONArray;IZIILandroid/graphics/Bitmap;Z)V

    .line 2647
    return-void

    .line 2639
    :catch_62
    move-exception v0

    move-object v7, v1

    .line 2640
    goto :goto_31

    :cond_65
    move-object v0, v1

    goto :goto_30
.end method
