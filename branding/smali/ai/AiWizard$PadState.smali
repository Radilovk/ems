.class final Lcom/isaigu/gymapp/ai/AiWizard$PadState;
.super Ljava/lang/Object;
.source "AiWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PadState"
.end annotation


# instance fields
.field typed:Ljava/lang/String;

.field final view:Landroid/widget/TextView;

.field final which:I


# direct methods
.method constructor <init>(ILandroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->typed:Ljava/lang/String;

    .line 531
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->which:I

    .line 532
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/AiWizard$PadState;->view:Landroid/widget/TextView;

    .line 533
    return-void
.end method
