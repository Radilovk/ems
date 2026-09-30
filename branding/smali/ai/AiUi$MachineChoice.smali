.class final Lcom/isaigu/gymapp/ai/AiUi$MachineChoice;
.super Ljava/lang/Object;
.source "AiUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/ai/AiUi$SegmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MachineChoice"
.end annotation


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiUi$MachineChoice;->c:Landroid/content/Context;

    .line 979
    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .registers 4

    .prologue
    .line 983
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiUi$MachineChoice;->c:Landroid/content/Context;

    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AutoHistory;->setCardioMachine(Landroid/content/Context;Z)V

    .line 984
    const/4 v0, 0x3

    # invokes: Lcom/isaigu/gymapp/ai/AiUi;->go(I)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiUi;->access$400(I)V

    .line 985
    return-void

    .line 983
    :cond_d
    const/4 v0, 0x0

    goto :goto_5
.end method
