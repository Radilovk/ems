.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;
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
    name = "ShareImage"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2392
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2393
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 2394
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->name:Ljava/lang/String;

    .line 2395
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 2399
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2401
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$ShareImage;->name:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleShare;->image(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 2402
    return-void
.end method
