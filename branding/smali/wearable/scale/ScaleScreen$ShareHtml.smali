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
.field final full:Z

.field final name:Ljava/lang/String;

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Ljava/lang/String;Z)V
    .registers 4

    .prologue
    .line 2831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2832
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2833
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->name:Ljava/lang/String;

    .line 2834
    iput-boolean p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->full:Z

    .line 2835
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .prologue
    .line 2839
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2841
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->boardPicture()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2842
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1b

    .line 2843
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2844
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareHtml;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->exportPop:Landroid/widget/PopupWindow;

    .line 2846
    :cond_1b
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

    .line 2847
    return-void
.end method
