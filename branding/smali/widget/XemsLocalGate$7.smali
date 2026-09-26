.class Lcom/isaigu/gymapp/widget/XemsLocalGate$7;
.super Ljava/lang/Object;
.source "XemsLocalGate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalGate;->onTaps(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tap:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$7;->val$tap:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 232
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalGate$7;->val$tap:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 233
    return-void
.end method
