.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;
.super Ljava/lang/Thread;
.source "BluetensScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NativeLoader"
.end annotation


# instance fields
.field final bg:Z

.field final v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Z)V
    .registers 4

    .prologue
    .line 1626
    const-string v0, "bluetens-native"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1627
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    .line 1628
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;->bg:Z

    .line 1629
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1635
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;->bg:Z

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;->load(Landroid/content/Context;Z)Ljava/util/List;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_1d

    move-result-object v0

    .line 1640
    :goto_e
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->main:Landroid/os/Handler;

    new-instance v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoaded;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoader;->v:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$NativeLoaded;-><init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1641
    return-void

    .line 1636
    :catch_1d
    move-exception v0

    .line 1637
    const-string v1, "BluetensNative.load"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_e
.end method
