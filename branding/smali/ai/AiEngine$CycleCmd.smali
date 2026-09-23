.class public final Lcom/isaigu/gymapp/ai/AiEngine$CycleCmd;
.super Ljava/lang/Object;
.source "AiEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CycleCmd"
.end annotation


# instance fields
.field public frac:D

.field public hz:I

.field public offS:I

.field public onS:I

.field public pwUs:I

.field public rampDownMs:I

.field public rampUpMs:I

.field public segmentB:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
