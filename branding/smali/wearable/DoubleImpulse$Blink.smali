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
.field built:Z

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

.field final halos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;",
            ">;"
        }
    .end annotation
.end field

.field root:Landroid/view/View;

.field start:J

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
    .registers 4
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
    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->halos:Ljava/util/List;

    .line 1000
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->views:Ljava/util/List;

    .line 1001
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->fade:Ljava/util/List;

    .line 1002
    return-void
.end method

.method static start(Ljava/util/List;Ljava/util/List;)V
    .registers 6
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
    .line 1005
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;-><init>(Ljava/util/List;Ljava/util/List;)V

    const-wide/16 v2, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1006
    return-void
.end method


# virtual methods
.method build()V
    .registers 4

    .prologue
    .line 1009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->built:Z

    .line 1010
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1011
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    if-nez v2, :cond_1f

    .line 1012
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    .line 1014
    :cond_1f
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->of(Landroid/view/View;Landroid/view/View;)Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;

    move-result-object v0

    .line 1015
    if-eqz v0, :cond_9

    .line 1016
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 1017
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->halos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1020
    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->start:J

    .line 1021
    return-void
.end method

.method public run()V
    .registers 9

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1025
    :try_start_2
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->built:Z

    if-nez v0, :cond_9

    .line 1026
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->build()V

    .line 1028
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->start:J

    sub-long v6, v0, v4

    .line 1029
    const-wide/16 v0, 0x4ec

    cmp-long v0, v6, v0

    if-gez v0, :cond_1b

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    if-nez v0, :cond_9d

    :cond_1b
    const/4 v0, 0x1

    move v4, v0

    .line 1030
    :goto_1d
    const/4 v0, 0x0

    .line 1031
    if-nez v4, :cond_f7

    .line 1032
    const-wide/16 v0, 0x1a4

    rem-long v0, v6, v0

    long-to-float v0, v0

    const/high16 v1, 0x43d20000    # 420.0f

    div-float/2addr v0, v1

    .line 1033
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    float-to-double v0, v0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1034
    mul-float v1, v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    sub-float v0, v3, v0

    mul-float/2addr v0, v1

    move v3, v0

    .line 1036
    :goto_3f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->halos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;

    .line 1037
    if-eqz v4, :cond_a1

    .line 1038
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    if-eqz v5, :cond_60

    .line 1039
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 1041
    :cond_60
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->recycle()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_63} :catch_64

    goto :goto_45

    .line 1057
    :catch_64
    move-exception v0

    .line 1058
    const-string v1, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "double glow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->halos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_83
    :goto_83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;

    .line 1060
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    if-eqz v3, :cond_83

    .line 1061
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    goto :goto_83

    .line 1029
    :cond_9d
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_1d

    .line 1043
    :cond_a1
    :try_start_a1
    iput v3, v0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->level:F

    .line 1044
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->place(Landroid/view/View;)V

    .line 1045
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Halo;->invalidateSelf()V

    goto :goto_45

    .line 1048
    :cond_ac
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    if-eqz v0, :cond_b5

    .line 1049
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1051
    :cond_b5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->fade:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1052
    if-eqz v4, :cond_ce

    move v1, v2

    :goto_ca
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_bb

    :cond_ce
    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    goto :goto_ca

    .line 1054
    :cond_d5
    if-nez v4, :cond_e0

    .line 1055
    # getter for: Lcom/isaigu/gymapp/wearable/DoubleImpulse;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/DoubleImpulse;->access$000()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x10

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_e0} :catch_64

    .line 1068
    :cond_e0
    return-void

    .line 1064
    :cond_e1
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/DoubleImpulse$Blink;->fade:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1065
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_e7

    :cond_f7
    move v3, v0

    goto/16 :goto_3f
.end method
