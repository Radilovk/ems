.class final Lcom/isaigu/gymapp/ai/AiCoachUi$ScrollDown;
.super Ljava/lang/Object;
.source "AiCoachUi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiCoachUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScrollDown"
.end annotation


# instance fields
.field final sc:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .registers 2

    .prologue
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$ScrollDown;->sc:Landroid/widget/ScrollView;

    .line 587
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$ScrollDown;->sc:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 592
    return-void
.end method
