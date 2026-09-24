.class final Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;
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
    name = "Delegate"
.end annotation


# instance fields
.field private final id:I

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->root:Landroid/view/View;

    .line 268
    iput p2, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    .line 269
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 274
    :try_start_0
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 275
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->root:Landroid/view/View;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_10

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    .line 282
    :cond_10
    :goto_10
    return-void

    .line 279
    :catch_11
    move-exception v0

    .line 280
    const-string v1, "XemsPanel.click"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method
