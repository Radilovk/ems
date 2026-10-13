.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;
.super Ljava/lang/Object;
.source "BluetensLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Event"
.end annotation


# static fields
.field static final CHANGED:I = 0x3

.field static final CONNECTION:I = 0x1

.field static final OP_DONE:I = 0x4

.field static final SERVICES:I = 0x2


# instance fields
.field final a:I

.field final b:I

.field final data:[B

.field final g:Landroid/bluetooth/BluetoothGatt;

.field final kind:I

.field final link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;ILandroid/bluetooth/BluetoothGatt;II[B)V
    .registers 7

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    .line 288
    iput p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->kind:I

    .line 289
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    .line 290
    iput p4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->a:I

    .line 291
    iput p5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->b:I

    .line 292
    iput-object p6, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->data:[B

    .line 293
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->closed:Z

    if-eqz v0, :cond_7

    .line 315
    :cond_6
    :goto_6
    return-void

    .line 301
    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->kind:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->a:I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->b:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->onConnection(Landroid/bluetooth/BluetoothGatt;II)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_6

    .line 312
    :catch_18
    move-exception v0

    .line 313
    const-string v1, "BluetensLink.event"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 303
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-ne v0, v1, :cond_6

    .line 305
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->kind:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->g:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->onServices(Landroid/bluetooth/BluetoothGatt;)V

    goto :goto_6

    .line 307
    :cond_34
    iget v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->shell:Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->data:[B

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;->onBytes([B)V

    goto :goto_6

    .line 310
    :cond_43
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink$Event;->link:Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLink;->onWriteDone()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_48} :catch_18

    goto :goto_6
.end method
