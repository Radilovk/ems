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
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;->sink:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 847
    iput p2, p0, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;->ev:I

    .line 848
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 852
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;->sink:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;->ev:I

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/ai/WakeSetup$Sink;->event(I)V

    .line 853
    return-void
.end method
