.class final Lcom/isaigu/gymapp/ai/WakeListener$DialogCommand;
.super Ljava/lang/Object;
.source "WakeListener.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/VoiceInput$Result;
.implements Lcom/isaigu/gymapp/ai/VoiceInput$WantsEmpty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DialogCommand"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onText(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 551
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeListener;->commandHeard(Ljava/util/ArrayList;)V

    .line 553
    return-void
.end method
