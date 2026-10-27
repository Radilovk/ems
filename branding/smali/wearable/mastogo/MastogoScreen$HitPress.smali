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
.field final p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;)V
    .registers 2

    .prologue
    .line 2073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2074
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    .line 2075
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v1, 0x3f75c28f    # 0.96f

    const/4 v2, 0x1

    .line 2079
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2080
    if-nez v0, :cond_1b

    .line 2081
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2082
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 2083
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 2084
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$HitPress;->p:Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/mastogo/MastogoScreen$Page;->hitPress()V

    .line 2090
    :cond_1a
    :goto_1a
    return v2

    .line 2085
    :cond_1b
    if-eq v0, v2, :cond_20

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 2086
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 2087
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 2088
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1a
.end method
