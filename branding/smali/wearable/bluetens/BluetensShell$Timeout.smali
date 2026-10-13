.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;
.super Ljava/lang/Object;
.source "BluetensShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Timeout"
.end annotation


# instance fields
.field final s:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

.field final t:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V
    .registers 3

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;->s:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 524
    iput p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;->t:I

    .line 525
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;->s:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Timeout;->t:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->timedOut(I)V

    .line 530
    return-void
.end method
