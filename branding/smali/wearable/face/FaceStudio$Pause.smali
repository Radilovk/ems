.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;
.super Ljava/lang/Object;
.source "FaceStudio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pause"
.end annotation


# instance fields
.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V
    .registers 2

    .prologue
    .line 1428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1430
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->pause()V

    .line 1435
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pause;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V

    .line 1436
    return-void
.end method
