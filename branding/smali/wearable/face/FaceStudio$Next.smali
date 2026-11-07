.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;
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
    name = "Next"
.end annotation


# instance fields
.field private final to:I

.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V
    .registers 3

    .prologue
    .line 1311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1313
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;->to:I

    .line 1314
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1318
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1322
    :goto_6
    return-void

    .line 1321
    :cond_7
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Next;->to:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->next(I)V

    goto :goto_6
.end method
