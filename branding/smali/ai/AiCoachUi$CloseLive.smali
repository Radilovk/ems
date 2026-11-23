.class final Lcom/isaigu/gymapp/ai/AiCoachUi$CloseLive;
.super Ljava/lang/Object;
.source "AiCoachUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiCoachUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseLive"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 578
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->closeLive()V

    .line 579
    return-void
.end method
