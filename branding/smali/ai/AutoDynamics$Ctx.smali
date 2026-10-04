.class public final Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;
.super Ljava/lang/Object;
.source "AutoDynamics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoDynamics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ctx"
.end annotation


# instance fields
.field public dose:D

.field public fresh:D

.field public hrHigh:Z

.field public hrLow:Z

.field public prev:I

.field public prev2:I

.field public progress:D

.field public sessions:I

.field public set:I

.field public used:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->fresh:D

    .line 114
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->dose:D

    .line 124
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev:I

    .line 125
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev2:I

    return-void
.end method
