.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;
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
    name = "PlusTap"
.end annotation


# instance fields
.field private final ch:I

.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V
    .registers 3

    .prologue
    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1128
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;->ch:I

    .line 1129
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1133
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1134
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->dev:Lcom/isaigu/gymapp/wearable/face/FaceDevice;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;->ch:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceDevice;->step(II)V

    .line 1135
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$PlusTap;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->refresh()V

    .line 1136
    return-void
.end method
