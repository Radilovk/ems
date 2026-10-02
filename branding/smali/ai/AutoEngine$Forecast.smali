.class public final Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;
.super Ljava/lang/Object;
.source "AutoEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Forecast"
.end annotation


# instance fields
.field public maxLoad:D

.field public phaseStartS:[D

.field public final points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[F>;"
        }
    .end annotation
.end field

.field public totalS:D


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public sessionAt(D)D
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1093
    const/4 v0, 0x0

    .line 1094
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1095
    aget v3, v0, v8

    float-to-double v4, v3

    cmpl-double v3, v4, p1

    if-ltz v3, :cond_44

    .line 1096
    if-eqz v1, :cond_27

    aget v2, v0, v8

    aget v3, v1, v8

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2b

    .line 1097
    :cond_27
    aget v0, v0, v6

    float-to-double v0, v0

    .line 1103
    :goto_2a
    return-wide v0

    .line 1099
    :cond_2b
    aget v2, v1, v6

    float-to-double v2, v2

    aget v4, v0, v6

    aget v5, v1, v6

    sub-float/2addr v4, v5

    float-to-double v4, v4

    aget v6, v1, v8

    float-to-double v6, v6

    sub-double v6, p1, v6

    mul-double/2addr v4, v6

    aget v0, v0, v8

    aget v1, v1, v8

    sub-float/2addr v0, v1

    float-to-double v0, v0

    div-double v0, v4, v0

    add-double/2addr v0, v2

    goto :goto_2a

    :cond_44
    move-object v1, v0

    .line 1102
    goto :goto_a

    .line 1103
    :cond_46
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Forecast;->totalS:D

    goto :goto_2a
.end method
