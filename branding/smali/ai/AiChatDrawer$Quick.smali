.class final Lcom/isaigu/gymapp/ai/AiChatDrawer$Quick;
.super Ljava/lang/Object;
.source "AiChatDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiChatDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Quick"
.end annotation


# instance fields
.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiChatDrawer$Quick;->text:Ljava/lang/String;

    .line 335
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 339
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiChatDrawer$Quick;->text:Ljava/lang/String;

    # invokes: Lcom/isaigu/gymapp/ai/AiChatDrawer;->fire(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiChatDrawer;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    return-void
.end method
