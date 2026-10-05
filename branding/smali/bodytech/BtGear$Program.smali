.class final Lcom/isaigu/gymapp/bodytech/BtGear$Program;
.super Ljava/lang/Object;
.source "BtGear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtGear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Program"
.end annotation


# instance fields
.field final c:Lcom/isaigu/gymapp/bodytech/BtGear$Choice;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/bodytech/BtGear$Choice;)V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Program;->c:Lcom/isaigu/gymapp/bodytech/BtGear$Choice;

    .line 96
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Program;->c:Lcom/isaigu/gymapp/bodytech/BtGear$Choice;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtGear$Replay;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtGear$Program;->c:Lcom/isaigu/gymapp/bodytech/BtGear$Choice;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtGear$Choice;->gear:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/bodytech/BtGear$Replay;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    return-void
.end method
