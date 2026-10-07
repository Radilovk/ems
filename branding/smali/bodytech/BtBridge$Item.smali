.class final Lcom/isaigu/gymapp/bodytech/BtBridge$Item;
.super Ljava/lang/Object;
.source "BtBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/bodytech/BtBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Item"
.end annotation


# instance fields
.field final cb:Lcom/clj/fastble/callback/BleWriteCallback;

.field final endLoad:Z

.field final frame:[B

.field final orig:[B


# direct methods
.method constructor <init>([BLcom/clj/fastble/callback/BleWriteCallback;[B)V
    .registers 5

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;-><init>([BLcom/clj/fastble/callback/BleWriteCallback;[BZ)V

    .line 323
    return-void
.end method

.method constructor <init>([BLcom/clj/fastble/callback/BleWriteCallback;[BZ)V
    .registers 5

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->frame:[B

    .line 327
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->cb:Lcom/clj/fastble/callback/BleWriteCallback;

    .line 328
    iput-object p3, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->orig:[B

    .line 329
    iput-boolean p4, p0, Lcom/isaigu/gymapp/bodytech/BtBridge$Item;->endLoad:Z

    .line 330
    return-void
.end method
