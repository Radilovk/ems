.class public final Lcom/isaigu/gymapp/ai/AutoModel$Extra;
.super Ljava/lang/Object;
.source "AutoModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extra"
.end annotation


# instance fields
.field public backAcute:Z

.field public backBladder:Z

.field public backNightPainFever:Z

.field public backRadiating:Z

.field public backSurgery:Z

.field public backTrauma:Z

.field public breastfeeding:Z

.field public cesarean:Z

.field public diastasis:Z

.field public weeksSinceBirth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    return-void
.end method


# virtual methods
.method public anyBackRedFlag()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backAcute:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backRadiating:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backTrauma:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backSurgery:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backNightPainFever:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backBladder:Z

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
