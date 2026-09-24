.class Lcom/isaigu/gymapp/widget/XemsLocalStore$1;
.super Ljava/lang/Object;
.source "XemsLocalStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsLocalStore;->onDiscovered(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Ljava/lang/Object;

.field final synthetic val$mac:Ljava/lang/String;

.field final synthetic val$sign:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 347
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;->val$adapter:Ljava/lang/Object;

    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;->val$mac:Ljava/lang/String;

    iput-object p3, p0, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;->val$sign:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;->val$adapter:Ljava/lang/Object;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;->val$mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalStore$1;->val$sign:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->access$000(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method
