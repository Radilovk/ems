.class final Lcom/isaigu/gymapp/ai/AiChatDrawer$ToEnd;
.super Ljava/lang/Object;
.source "AiChatDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiChatDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToEnd"
.end annotation


# instance fields
.field final sc:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .registers 2

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiChatDrawer$ToEnd;->sc:Landroid/widget/ScrollView;

    .line 324
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiChatDrawer$ToEnd;->sc:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 329
    return-void
.end method
