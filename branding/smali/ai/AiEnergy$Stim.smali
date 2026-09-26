.class public final Lcom/isaigu/gymapp/ai/AiEnergy$Stim;
.super Ljava/lang/Object;
.source "AiEnergy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiEnergy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stim"
.end annotation


# instance fields
.field public channels:[I

.field public disabled:[Z

.field public hz:I

.field public onShare:D

.field public pauseHz:I

.field public pauseShare:D

.field public pauseStrengthPct:D

.field public pwUs:I

.field public strengthPct:D

.field public toleratedCharge:[D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
