.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;
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
    name = "Pick"
.end annotation


# instance fields
.field private final id:I

.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;I)V
    .registers 3

    .prologue
    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1041
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1042
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;->id:I

    .line 1043
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1047
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1048
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Pick;->id:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->pick(I)V

    .line 1049
    return-void
.end method
