.class final Lcom/isaigu/gymapp/bodytech/BtGear$Replay;
.super Ljava/lang/Object;
.source "BtGear.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtGear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Replay"
.end annotation


# instance fields
.field final gear:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Replay;->gear:Landroid/view/View;

    .line 109
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x1

    # setter for: Lcom/isaigu/gymapp/bodytech/BtGear;->bypass:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtGear;->access$002(Z)Z

    .line 114
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Replay;->gear:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/bodytech/BtGear;->bypass:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtGear;->access$002(Z)Z

    .line 115
    :cond_10
    return-void
.end method
