.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CycPick;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CycPick"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 2736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2737
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CycPick;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2738
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$CycPick;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iput p1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->gCyc:I

    .line 2743
    return-void
.end method
