.class final Lcom/isaigu/gymapp/widget/XemsPanel$Refresh;
.super Ljava/lang/Object;
.source "XemsPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Refresh"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 303
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->refresh()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 307
    :goto_3
    return-void

    .line 304
    :catch_4
    move-exception v0

    .line 305
    const-string v1, "XemsPanel.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
