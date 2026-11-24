.class final Lcom/isaigu/gymapp/ai/WakeListener$Recognize;
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
    name = "Recognize"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 484
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->begin()V
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$800()V

    .line 485
    return-void
.end method
