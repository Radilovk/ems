.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;
.super Ljava/lang/Object;
.source "BluetensScreen.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tab"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 2

    .prologue
    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1360
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Tab;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->setTab(I)V

    .line 1365
    return-void
.end method
