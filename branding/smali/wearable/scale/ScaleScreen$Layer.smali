.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Layer;
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
    name = "Layer"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Layer;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 772
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Layer;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->setLayer(I)V

    .line 777
    return-void
.end method
