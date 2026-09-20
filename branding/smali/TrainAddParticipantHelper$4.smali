.class Lcom/isaigu/gymapp/train/TrainAddParticipantHelper$4;
.super Ljava/lang/Object;
.source "TrainAddParticipantHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->buildOverlay(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 228
    # invokes: Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->openAddUserDialog()V
    invoke-static {}, Lcom/isaigu/gymapp/train/TrainAddParticipantHelper;->access$100()V

    .line 229
    return-void
.end method
