.class final Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;
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
    name = "SetupEvent"
.end annotation


# instance fields
.field final ev:I

.field final sink:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/WakeSetup$Sink;I)V
    .registers 3

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;->sink:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 451
    iput p2, p0, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;->ev:I

    .line 452
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;->sink:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;->ev:I

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ai/WakeSetup$Sink;->event(I)V

    .line 457
    return-void
.end method
