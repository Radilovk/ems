.class public final Lcom/isaigu/gymapp/ai/AiEngine$BlockStat;
.super Ljava/lang/Object;
.source "AiEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlockStat"
.end annotation


# instance fields
.field public d:D

.field public dHr:D

.field public fEnd:D

.field public index:I

.field public phase:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

.field public q:D

.field public r:D

.field public startMs:J

.field public tBlockS:D

.field public tRestS:D

.field public tauHr:D

.field public v:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
