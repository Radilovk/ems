.class public final Lcom/isaigu/gymapp/dialog/ProgramSegment;
.super Ljava/lang/Object;
.source "ProgramSegment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public cycles:I

.field public hz:I

.field public pulseContinue:I

.field public pulsePause:I

.field public pulseWidth:I

.field public strenth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 18
    return-void
.end method

.method public static fromBean(Lcom/isaigu/gymapp/bean/ProgramDataBean;)Lcom/isaigu/gymapp/dialog/ProgramSegment;
    .registers 3

    .line 21
    new-instance v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;-><init>()V

    .line 22
    if-nez p0, :cond_8

    .line 23
    return-object v0

    .line 25
    :cond_8
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    .line 26
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    .line 27
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    .line 28
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseContinue:I

    .line 29
    iget p0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    iput p0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulsePause:I

    .line 30
    iget p0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    const/4 v1, 0x1

    if-ge p0, v1, :cond_23

    .line 31
    iput v1, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    .line 33
    :cond_23
    return-object v0
.end method


# virtual methods
.method public applyTo(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V
    .registers 3

    .line 37
    if-nez p1, :cond_3

    .line 38
    return-void

    .line 40
    :cond_3
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->strenth:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 41
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->hz:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 42
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseWidth:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 43
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseContinue:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 44
    iget v0, p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulsePause:I

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 45
    return-void
.end method
