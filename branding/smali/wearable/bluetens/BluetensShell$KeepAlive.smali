.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;
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
    name = "KeepAlive"
.end annotation


# instance fields
.field final s:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

.field final t:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;I)V
    .registers 3

    .prologue
    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;->s:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    .line 648
    iput p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;->t:I

    .line 649
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;->s:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$KeepAlive;->t:I

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->keepAlive(I)V

    .line 654
    return-void
.end method
