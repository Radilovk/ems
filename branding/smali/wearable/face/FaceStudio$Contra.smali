.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;
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
    name = "Contra"
.end annotation


# instance fields
.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V
    .registers 2

    .prologue
    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1305
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1309
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    if-nez v0, :cond_12

    move v0, v1

    :goto_a
    iput-boolean v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->contra:Z

    .line 1310
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Contra;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->go(I)V

    .line 1311
    return-void

    .line 1309
    :cond_12
    const/4 v0, 0x0

    goto :goto_a
.end method
