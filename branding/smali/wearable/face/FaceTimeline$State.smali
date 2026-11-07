.class public final Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
.super Ljava/lang/Object;
.source "FaceTimeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceTimeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field public done:Z

.field public elapsedMs:J

.field public hz:I

.field public leftMs:J

.field public level:F

.field public on:Z

.field public phase:I

.field public totalMs:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
