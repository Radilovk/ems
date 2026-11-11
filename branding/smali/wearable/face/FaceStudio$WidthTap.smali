.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$WidthTap;
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
    name = "WidthTap"
.end annotation


# instance fields
.field private final d:I

.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V
    .registers 3

    .prologue
    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$WidthTap;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1367
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$WidthTap;->d:I

    .line 1368
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1372
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1373
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$WidthTap;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$WidthTap;->d:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->stepWidth(I)V

    .line 1374
    return-void
.end method
