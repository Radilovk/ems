.class final Lcom/isaigu/gymapp/ai/WakeListener$Hear;
.super Ljava/lang/Object;
.source "WakeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hear"
.end annotation


# instance fields
.field final a:[S

.field final mode:I

.field final n:I


# direct methods
.method constructor <init>([SII)V
    .registers 4

    .prologue
    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Hear;->a:[S

    .line 651
    iput p2, p0, Lcom/isaigu/gymapp/ai/WakeListener$Hear;->n:I

    .line 652
    iput p3, p0, Lcom/isaigu/gymapp/ai/WakeListener$Hear;->mode:I

    .line 653
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 657
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeListener$Hear;->a:[S

    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeListener$Hear;->n:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/CloudEar;->hear([SI)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeListener$Hear;->mode:I

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 658
    return-void
.end method
