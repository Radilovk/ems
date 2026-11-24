.class final Lcom/isaigu/gymapp/ai/AiCoachBar$Mic;
.super Ljava/lang/Object;
.source "AiCoachBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiCoachBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Mic"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 116
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 117
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->isOn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->stop()V

    .line 122
    :goto_c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachBar;->refresh()V

    .line 123
    return-void

    .line 120
    :cond_10
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->start(Landroid/app/Activity;)Z

    goto :goto_c
.end method
