.class final Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;
.super Ljava/lang/Object;
.source "XemsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StartClick"
.end annotation


# instance fields
.field private final delegate:Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    const v1, 0x7f09003b

    invoke-direct {v0, p1, v1}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;->delegate:Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    .line 292
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 296
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$StartClick;->delegate:Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->onClick(Landroid/view/View;)V

    .line 297
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;

    invoke-direct {v0}, Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;-><init>()V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    return-void
.end method
