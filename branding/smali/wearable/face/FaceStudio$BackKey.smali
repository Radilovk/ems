.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;
.super Ljava/lang/Object;
.source "FaceStudio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BackKey"
.end annotation


# instance fields
.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V
    .registers 2

    .prologue
    .line 966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 967
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 968
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 972
    if-ne p2, v2, :cond_a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_f

    .line 973
    :cond_a
    if-ne p2, v2, :cond_d

    .line 980
    :goto_c
    return v0

    .line 973
    :cond_d
    const/4 v0, 0x0

    goto :goto_c

    .line 975
    :cond_f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    if-eq v1, v0, :cond_1c

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->step:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 976
    :cond_1c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->back()V

    goto :goto_c

    .line 978
    :cond_22
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$BackKey;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->closeTapped()V

    goto :goto_c
.end method
