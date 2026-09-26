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

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->root:Landroid/view/View;

    .line 270
    iput p2, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    .line 271
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 276
    :try_start_0
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 277
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->root:Landroid/view/View;

    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsPanel$Delegate;->id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 278
    if-eqz p1, :cond_10

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    .line 283
    :cond_10
    goto :goto_17

    .line 281
    :catchall_11
    move-exception p1

    .line 282
    const-string v0, "XemsPanel.click"

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    :goto_17
    return-void
.end method
