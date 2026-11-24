.class final Lcom/isaigu/gymapp/ai/AiWizard$NumOpen;
.super Ljava/lang/Object;
.source "AiWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NumOpen"
.end annotation


# instance fields
.field final which:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiWizard$NumOpen;->which:I

    .line 718
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 722
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 723
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiWizard$NumOpen;->which:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->openPad(Landroid/app/Activity;I)V

    .line 724
    return-void
.end method
