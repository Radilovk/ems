.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;
.super Ljava/lang/Object;
.source "ScaleSenssun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation


# instance fields
.field public final type:I

.field public final v1:I

.field public final v2:I

.field public final v2swap:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->type:I

    .line 72
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v1:I

    .line 73
    iput p3, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v2:I

    .line 74
    iput p4, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSenssun$Frame;->v2swap:I

    .line 75
    return-void
.end method
