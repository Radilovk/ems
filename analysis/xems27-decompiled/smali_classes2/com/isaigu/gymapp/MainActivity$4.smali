.class Lcom/isaigu/gymapp/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/MainActivity;->handleEvent(Lcom/isaigu/gymapp/message/DataBundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/MainActivity;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/MainActivity;

    .line 289
    iput-object p1, p0, Lcom/isaigu/gymapp/MainActivity$4;->this$0:Lcom/isaigu/gymapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity$4;->this$0:Lcom/isaigu/gymapp/MainActivity;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/MainActivity;->dismissLoadingDialog()V

    .line 292
    return-void
.end method
