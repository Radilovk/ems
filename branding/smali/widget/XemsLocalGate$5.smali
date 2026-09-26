.class Lcom/isaigu/gymapp/widget/XemsLocalGate$5;
.super Ljava/lang/Object;
.source "XemsLocalGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalGate;->onTaps(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/Runnable;

.field final synthetic val$count:[I

.field final synthetic val$last:[J


# direct methods
.method constructor <init>([I[JLjava/lang/Runnable;)V
    .registers 4

    .line 206
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$count:[I

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$last:[J

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 210
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$count:[I

    iget-object v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$last:[J

    const/4 v4, 0x0

    aget-wide v5, v3, v4

    sub-long v5, v0, v5

    const/4 v3, 0x1

    const-wide/16 v7, 0xbb8

    cmp-long v9, v5, v7

    if-lez v9, :cond_15

    goto :goto_18

    :cond_15
    aget v5, v2, v4

    add-int/2addr v3, v5

    :goto_18
    aput v3, v2, v4

    .line 211
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$last:[J

    aput-wide v0, v2, v4

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$count:[I

    aget v1, v0, v4

    const/4 v2, 0x7

    if-lt v1, v2, :cond_2c

    .line 213
    aput v4, v0, v4

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 216
    :cond_2c
    return-void
.end method
