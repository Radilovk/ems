.class public Lcom/isaigu/gymapp/bean/ProgramDataBean;
.super Ljava/lang/Object;
.source "ProgramDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hz:I

.field public inputRamp:I

.field public massageCycle:I

.field public outputRamp:I

.field public pulseContinue:I

.field public pulsePause:I

.field public pulseWidth:I

.field public strenth:I

.field public strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

.field public workLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v0}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 29
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 40
    return-void
.end method
