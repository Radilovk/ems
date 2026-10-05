.class Lcom/isaigu/gymapp/widget/XemsLocalGate$3;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 184
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$count:[I

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$last:[J

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 188
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$count:[I

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$last:[J

    aget-wide v4, v0, v8

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    if-lez v0, :cond_2b

    const/4 v0, 0x1

    :goto_14
    aput v0, v1, v8

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$last:[J

    aput-wide v2, v0, v8

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$count:[I

    aget v0, v0, v8

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2a

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$count:[I

    aput v8, v0, v8

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 194
    :cond_2a
    return-void

    .line 188
    :cond_2b
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$3;->val$count:[I

    aget v0, v0, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method
