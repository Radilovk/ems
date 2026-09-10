.class public Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;
.super Landroid/os/Handler;
.source "JZMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/video/JZMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/widget/video/JZMediaManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/video/JZMediaManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    .line 157
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 158
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 164
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 166
    :pswitch_1
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    const/4 v2, 0x0

    iput v2, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoWidth:I

    .line 167
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    const/4 v2, 0x0

    iput v2, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->currentVideoHeight:I

    .line 168
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->prepare()V

    .line 172
    :cond_1
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 174
    sget-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 176
    :cond_2
    new-instance v1, Landroid/view/Surface;

    sget-object v2, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sput-object v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->surface:Landroid/view/Surface;

    .line 177
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    sget-object v2, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->surface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/video/JZMediaManager$MediaHandler;->this$0:Lcom/isaigu/gymapp/widget/video/JZMediaManager;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/video/JZMediaManager;->jzMediaInterface:Lcom/isaigu/gymapp/widget/video/JZMediaInterface;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/widget/video/JZMediaInterface;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
