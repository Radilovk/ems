.class public final Lcom/isaigu/gymapp/ai/PulseAdvice$Past;
.super Ljava/lang/Object;
.source "PulseAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/PulseAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Past"
.end annotation


# instance fields
.field public activeS:I

.field public assisted:Z

.field public hrAvg:I

.field public modes:I

.field public planS:I

.field public start:J


# direct methods
.method public constructor <init>(JIIIZI)V
    .registers 9

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->start:J

    .line 75
    iput p3, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->activeS:I

    .line 76
    iput p4, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->planS:I

    .line 77
    iput p5, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->modes:I

    .line 78
    iput-boolean p6, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->assisted:Z

    .line 79
    iput p7, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->hrAvg:I

    .line 80
    return-void
.end method


# virtual methods
.method active()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->assisted:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->modes:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
