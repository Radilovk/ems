.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;
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
    name = "LiveChange"
.end annotation


# instance fields
.field final f:I

.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V
    .registers 3

    .prologue
    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1193
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1194
    iput p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;->f:I

    .line 1195
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 4

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveChange;->f:I

    invoke-virtual {v0, v1, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveChange(II)V

    .line 1200
    return-void
.end method
