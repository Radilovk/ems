.class public final Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;
.super Ljava/lang/Object;
.source "AutoTemplates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoTemplates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Outcome"
.end annotation


# instance fields
.field public cut:D

.field public done:D

.field public hrOver:Z

.field public level:I


# direct methods
.method public constructor <init>(IDDZ)V
    .registers 7

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->level:I

    .line 60
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->done:D

    .line 61
    iput-wide p4, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->cut:D

    .line 62
    iput-boolean p6, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->hrOver:Z

    .line 63
    return-void
.end method


# virtual methods
.method bad()Z
    .registers 5

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->done:D

    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1a

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->cut:D

    const-wide v2, 0x3fc3333333333333L    # 0.15

    cmpl-double v0, v0, v2

    if-gez v0, :cond_1a

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->hrOver:Z

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method good()Z
    .registers 5

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->done:D

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1c

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->cut:D

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->hrOver:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
