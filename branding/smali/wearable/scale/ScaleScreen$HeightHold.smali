.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HeightHold"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 2806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2807
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2808
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 3

    .prologue
    .line 2812
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$HeightHold;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stepHeight(I)V

    .line 2813
    return-void
.end method
