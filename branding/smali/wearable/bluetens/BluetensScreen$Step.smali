.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# instance fields
.field final p:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;)V
    .registers 3

    .prologue
    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 905
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;->p:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    .line 906
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .prologue
    .line 910
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Step;->p:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->step(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Pad;I)V

    .line 911
    return-void
.end method
