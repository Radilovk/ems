.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;
.super Ljava/lang/Object;
.source "ScaleDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Control"
.end annotation


# instance fields
.field public fat:D

.field public muscle:D

.field public target:D

.field public total:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->target:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->total:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->fat:D

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleDetail$Control;->muscle:D

    return-void
.end method
