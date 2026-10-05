.class public final Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;
.super Ljava/lang/Object;
.source "AutoEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cmd"
.end annotation


# instance fields
.field public base:Lcom/isaigu/gymapp/ai/AutoModel$Step;

.field public ceiling:D

.field public env:D

.field public frac:D

.field public hz:I

.field public offS:I

.field public onS:I

.field public pauseHz:I

.field public pauseSigma:D

.field public phaseIndex:I

.field public phi:D

.field public pwUs:I

.field public rampDownMs:I

.field public rampUpMs:I

.field public scale:D

.field public startMs:J

.field public stepIndex:I

.field public zones:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public durationMs()I
    .registers 4

    .prologue
    .line 53
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->onS:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoEngine$Cmd;->offS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method
