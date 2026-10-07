.class final Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;
.super Ljava/lang/Object;
.source "DoubleImpulse.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/DoubleImpulse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Blink"
.end annotation


# instance fields
.field final fade:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final glows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;",
            ">;"
        }
    .end annotation
.end field

.field final start:J

.field final views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->glows:Ljava/util/List;

    .line 961
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->start:J

    .line 964
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->views:Ljava/util/List;

    .line 965
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->fade:Ljava/util/List;

    .line 966
    return-void
.end method

.method static start(Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 969
    new-instance v3, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;

    invoke-direct {v3, p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 970
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 971
    new-instance v5, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    .line 972
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v7, 0x4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-gt v1, v7, :cond_58

    const/4 v1, 0x1

    :goto_3d
    invoke-direct {v5, v6, v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;-><init>(FZ)V

    .line 973
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5, v2, v2, v1, v6}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->setBounds(IIII)V

    .line 974
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 975
    iget-object v0, v3, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->glows:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_58
    move v1, v2

    .line 972
    goto :goto_3d

    .line 977
    :cond_5a
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->start:J

    sub-long v2, v0, v2

    .line 982
    const-wide/16 v0, 0x348

    cmp-long v0, v2, v0

    if-ltz v0, :cond_51

    const/4 v0, 0x1

    move v6, v0

    .line 983
    :goto_13
    const/4 v0, 0x0

    .line 984
    if-nez v6, :cond_93

    .line 985
    const-wide/16 v0, 0x118

    rem-long v0, v2, v0

    long-to-float v0, v0

    const/high16 v1, 0x438c0000    # 280.0f

    div-float/2addr v0, v1

    .line 986
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    float-to-double v0, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    move v2, v0

    :goto_2b
    move v3, v4

    .line 988
    :goto_2c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_67

    .line 989
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->views:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 990
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->glows:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;

    .line 991
    if-eqz v6, :cond_53

    .line 992
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 988
    :goto_4d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2c

    :cond_51
    move v6, v4

    .line 982
    goto :goto_13

    .line 994
    :cond_53
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v1, v4, v4, v7, v8}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->setBounds(IIII)V

    .line 995
    iput v2, v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->level:F

    .line 996
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Glow;->invalidateSelf()V

    .line 997
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_4d

    .line 1000
    :cond_67
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->fade:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1001
    if-eqz v6, :cond_80

    move v1, v5

    :goto_7c
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6d

    :cond_80
    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    sub-float v1, v5, v1

    goto :goto_7c

    .line 1003
    :cond_87
    if-nez v6, :cond_92

    .line 1004
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1006
    :cond_92
    return-void

    :cond_93
    move v2, v0

    goto :goto_2b
.end method
