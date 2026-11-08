.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;
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
    name = "Start"
.end annotation


# instance fields
.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V
    .registers 2

    .prologue
    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1417
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Start;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->start()V

    .line 1422
    return-void
.end method
