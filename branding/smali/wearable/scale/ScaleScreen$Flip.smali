.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Flip;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Flip"
.end annotation


# instance fields
.field final bit:I

.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;I)V
    .registers 3

    .prologue
    .line 2722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2723
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Flip;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2724
    iput p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Flip;->bit:I

    .line 2725
    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 5

    .prologue
    .line 2729
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Flip;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Flip;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gCond:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Flip;->bit:I

    or-int/2addr v0, v2

    :goto_b
    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gCond:I

    .line 2730
    return-void

    .line 2729
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Flip;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gCond:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Flip;->bit:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    goto :goto_b
.end method
