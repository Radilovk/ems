.class final Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;
.super Ljava/lang/Object;
.source "CardPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/CardPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Destroy"
.end annotation


# instance fields
.field final w:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;->w:Landroid/webkit/WebView;

    .line 125
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;->w:Landroid/webkit/WebView;

    const-string v1, "XemsReport"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/CardPublisher$Destroy;->w:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    .line 134
    :goto_c
    return-void

    .line 132
    :catch_d
    move-exception v0

    goto :goto_c
.end method
