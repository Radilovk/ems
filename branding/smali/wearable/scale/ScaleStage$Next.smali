.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Next;
.super Ljava/lang/Object;
.source "ScaleStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Next"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V
    .registers 2

    .prologue
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Next;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 763
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Next;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Next;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->needOff:Z

    if-eqz v0, :cond_13

    .line 768
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Next;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->phase(I)V

    .line 770
    :cond_13
    return-void
.end method
