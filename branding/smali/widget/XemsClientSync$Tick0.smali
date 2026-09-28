.class final Lcom/isaigu/gymapp/widget/XemsClientSync$Tick0;
.super Ljava/lang/Object;
.source "XemsClientSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsClientSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick0"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsClientSync;->maybePoll(Z)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_5

    .line 123
    :goto_4
    return-void

    .line 121
    :catch_5
    move-exception v0

    goto :goto_4
.end method
