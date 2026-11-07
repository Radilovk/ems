.class final Lcom/isaigu/gymapp/ai/AutoHints$Start;
.super Ljava/lang/Object;
.source "AutoHints.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AutoHints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Start"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 330
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->togglePause()V

    .line 331
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoHints;->refresh()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    .line 335
    :goto_6
    return-void

    .line 332
    :catch_7
    move-exception v0

    .line 333
    const-string v1, "AutoHints.start"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method
