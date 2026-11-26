.class final Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;
.super Ljava/lang/Object;
.source "MastogoScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HitPress"
.end annotation


# instance fields
.field final i:I

.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;I)V
    .registers 3

    .prologue
    .line 2211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 2213
    iput p2, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;->i:I

    .line 2214
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v1, 0x3f75c28f    # 0.96f

    const/4 v2, 0x1

    .line 2218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2219
    if-nez v0, :cond_1d

    .line 2220
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2221
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2222
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2223
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;->i:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxDown(I)V

    .line 2230
    :cond_1c
    :goto_1c
    return v2

    .line 2224
    :cond_1d
    if-eq v0, v2, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    .line 2225
    :cond_22
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;->i:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->fxUp(I)V

    .line 2226
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2227
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 2228
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1c
.end method
