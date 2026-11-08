.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;
.super Ljava/lang/Object;
.source "FaceStudio.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StepCh"
.end annotation


# instance fields
.field private final ch:I

.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V
    .registers 3

    .prologue
    .line 1367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1369
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;->ch:I

    .line 1370
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;->ch:I

    invoke-interface {v0, v1, p1}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->step(II)V

    .line 1375
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$StepCh;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V

    .line 1376
    return-void
.end method
