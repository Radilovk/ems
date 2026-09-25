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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 206
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$count:[I

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$last:[J

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 210
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$count:[I

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$last:[J

    aget-wide v4, v0, v8

    sub-long v4, v2, v4

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    aput v0, v1, v8

    .line 211
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$last:[J

    aput-wide v2, v0, v8

    .line 212
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$count:[I

    aget v0, v0, v8

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$count:[I

    aput v8, v0, v8

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 216
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$5;->val$count:[I

    aget v0, v0, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
