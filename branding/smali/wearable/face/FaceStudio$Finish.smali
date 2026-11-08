.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;
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
    name = "Finish"
.end annotation


# instance fields
.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V
    .registers 2

    .prologue
    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1458
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1459
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Finish;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->finishDone()V

    .line 1464
    return-void
.end method
