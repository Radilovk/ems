.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LiveApply"
.end annotation


# instance fields
.field final t:I

.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;I)V
    .registers 3

    .prologue
    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1542
    iput p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;->t:I

    .line 1543
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1548
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LiveApply;->t:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->liveApply(I)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 1552
    :goto_7
    return-void

    .line 1549
    :catch_8
    move-exception v0

    .line 1550
    const-string v1, "BluetensScreen.live"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
