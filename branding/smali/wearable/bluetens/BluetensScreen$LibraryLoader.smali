.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;
.super Ljava/lang/Thread;
.source "BluetensScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LibraryLoader"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;)V
    .registers 3

    .prologue
    .line 1606
    const-string v0, "bluetens-library"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1607
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1608
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1614
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;->load(Landroid/content/Context;)Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_1b

    move-result-object v0

    .line 1619
    :goto_c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoaded;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoader;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$LibraryLoaded;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1620
    return-void

    .line 1615
    :catch_1b
    move-exception v0

    .line 1616
    const-string v1, "BluetensLibrary.load"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1617
    new-instance v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Lib;-><init>()V

    goto :goto_c
.end method
