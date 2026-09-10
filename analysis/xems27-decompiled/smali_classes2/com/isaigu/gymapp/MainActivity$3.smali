.class Lcom/isaigu/gymapp/MainActivity$3;
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

    .line 269
    iput-object p1, p0, Lcom/isaigu/gymapp/MainActivity$3;->this$0:Lcom/isaigu/gymapp/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/isaigu/gymapp/MainActivity$3;->this$0:Lcom/isaigu/gymapp/MainActivity;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/MainActivity;->showLoadingDialog(J)V

    .line 272
    return-void
.end method
