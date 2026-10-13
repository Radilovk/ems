.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Closed;
.super Ljava/lang/Object;
.source "BluetensEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Closed"
.end annotation


# instance fields
.field final e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;)V
    .registers 2

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Closed;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    .line 415
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Closed;->e:Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensEditor$Ed;->closed()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 424
    :goto_5
    return-void

    .line 421
    :catch_6
    move-exception v0

    .line 422
    const-string v1, "BluetensEditor.closed"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
