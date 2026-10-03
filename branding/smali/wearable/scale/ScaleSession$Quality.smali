.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;
.super Ljava/lang/Object;
.source "ScaleSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Quality"
.end annotation


# instance fields
.field public armGap:D

.field public arms:Z

.field public full:Z

.field public legGap:D

.field public legs:Z

.field public trunk:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v0, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->arms:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legs:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->trunk:Z

    .line 29
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->armGap:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legGap:D

    return-void
.end method


# virtual methods
.method public ok()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->full:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->arms:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleSession$Quality;->legs:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
