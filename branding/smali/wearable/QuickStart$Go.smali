.class final Lcom/isaigu/gymapp/wearable/QuickStart$Go;
.super Ljava/lang/Object;
.source "QuickStart.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/QuickStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Go"
.end annotation


# instance fields
.field private final b:Landroid/widget/TextView;

.field private final u:Lcom/isaigu/gymapp/bean/TrainUser;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->b:Landroid/widget/TextView;

    .line 102
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 103
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 123
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/QuickStart;->activity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/QuickStart;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 125
    return-void
.end method

.method paint()V
    .registers 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->u:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/QuickStart;->slotFor(Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v0

    if-ltz v0, :cond_2e

    const/4 v0, 0x1

    .line 107
    :goto_9
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_30

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_f
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 108
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v0, :cond_34

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_1e
    invoke-static {v3, v1}, Lcom/isaigu/gymapp/wearable/QuickStart;->roundFill(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    const/4 v0, -0x1

    :goto_2a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    return-void

    .line 106
    :cond_2e
    const/4 v0, 0x0

    goto :goto_9

    .line 107
    :cond_30
    const v1, 0x3eb33333    # 0.35f

    goto :goto_f

    .line 108
    :cond_34
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    goto :goto_1e

    .line 109
    :cond_37
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_2a
.end method

.method public run()V
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_9

    .line 119
    :goto_8
    return-void

    .line 117
    :cond_9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->paint()V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->b:Landroid/widget/TextView;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8
.end method
