.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Answer"
.end annotation


# instance fields
.field final q:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field final then:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 1973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1974
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;->q:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 1975
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;->then:Ljava/lang/Runnable;

    .line 1976
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1980
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1982
    :try_start_3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;->q:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_1b

    .line 1985
    :goto_a
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;->then:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 1987
    :try_start_e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Answer;->then:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_14

    .line 1992
    :cond_13
    :goto_13
    return-void

    .line 1988
    :catch_14
    move-exception v0

    .line 1989
    const-string v1, "ScaleScreen.answer"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 1983
    :catch_1b
    move-exception v0

    goto :goto_a
.end method
